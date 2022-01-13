
namespace eval ::sdx {

# Common names used in multiple locations below, here to facilitate easy changing.
set paramSectionName "PARAM:global"
set firstName {}
set initName {}
set newName {}
array set initRunTime {}
set initRun {}

proc write_settings { filename } {
    # report_property -file <filename> -append is tempting to use, but we want to add some output,
    # and avoid having to open the file, close it, open it, etc.

    if {[catch {open $filename w} outFile]} {
      send_msg_id SDx-intertools-001 ERROR "failed to open file for write ($filename)\n"
      return -1
    }

    puts $outFile ">>>PARAM:global"
    puts $outFile [report_param -non_default -quiet -return_string]
    puts $outFile ">>>PROJECT:[current_project]"
    puts $outFile [report_property [current_project] -quiet -return_string]
    foreach fileset [get_filesets] {
      puts $outFile ">>>FILESET:$fileset"
      puts $outFile [report_property $fileset -quiet -return_string]
    }
    foreach run [get_runs] {
      puts $outFile ">>>RUN:$run"
      puts $outFile [report_property $run -quiet -return_string]
    }
    close $outFile
}

proc get_latest_name {} {
  set base $::output_dir/settings_
  set i 0
  set latest_name {}
  while 1 {
    set name ${base}${i}.log
    if {[file exists $name]} {
      set latest_name $name
    } else {
      return $latest_name
    }
    incr i
  }
}

proc get_next_name {} {
  set base $::output_dir/settings_
  set i 0
  while 1 {
    set name ${base}${i}.log
    if {![file exists $name]} {
      return $name
    }
    incr i
  }
}

proc read_settings { filename dbVar } {
    upvar 1 $dbVar db

    # Open the file for reading.
    if {[catch {open $filename r} inFile]} {
        send_msg_id SDx-intertools-002 ERROR "failed to open file for reading ($filename)\n"
    }
    set slurp [read $inFile]
        # Alternatively, to read in the file line by line:
        # while {[gets $inFile data != -1]}
    close $inFile

    # The output of the various report_* commands is not tab delimited, but
    # formatted with spaces so that everything lines up in nice columns.
    # Further complicating our efforts to read that in, some names can have
    # spaces in them, like
    # "STEPS.POST_ROUTE_PHYS_OPT_DESIGN.ARGS.MORE OPTIONS".
    # So we can't delimit on spaces.
    set data [split $slurp "\n"]
    set processHeader false
    set nameCharStart 0
    foreach line $data {

        if {[string compare -length 3 $line ">>>"] == 0} {

            # This is a new section.
            set section [string range $line 3 end]
            set processHeader true

        } elseif {$processHeader} {

            set headerTitles [regexp -all -inline {\S+} $line]
            # The first column is always the Name/Property column. Its character
            # span ends with the second column.
            set nameCharEnd [string first [lindex $headerTitles 1] $line]
            incr nameCharEnd -1

            # Formatting of the columns is different for parameters and properties,
            # and can vary for internal vs. customer build. We want to find two
            # columns by name, "Read-only" and "Value", and their character spans.

            set readOnlyCharStart [string first "Read-only" $line]
            if { $readOnlyCharStart != -1 } {
                # Is the Read-only column that last column, or in the middle somewhere?
                set readOnlyColumn [lsearch -exact $headerTitles "Read-only"]
                set nextColumn [expr $readOnlyColumn + 1]
                if {$nextColumn == [llength $headerTitles]} {
                    set readOnlyCharEnd end
                } else {
                    set readOnlyCharEnd [string first [lindex $headerTitles $nextColumn] $line]
                    incr readOnlyCharEnd -1
                }
            }

            set valueCharStart [string first "Value" $line]
            # TODO: Check if not found, valueCharStart == -1
            # Is the Value column that last column, or in the middle somewhere?
            set valueColumn [lsearch -exact $headerTitles "Value"]
            set nextColumn [expr $valueColumn + 1]
            if {$nextColumn == [llength $headerTitles]} {
                set valueCharEnd end
            } else {
                set valueCharEnd [string first [lindex $headerTitles $nextColumn] $line]
                incr valueCharEnd -1
            }

            set processHeader false

        } elseif {[llength $line]} {
            
            # Check if this is a read-only property, in which case we can skip it.
            if { $readOnlyCharStart != -1 } {
                set readOnly [string trim [string range $line $readOnlyCharStart $readOnlyCharEnd]]
                if { $readOnly } { continue }
            }

            # Process an entry to extract name and value
            set name [string trim [string range $line $nameCharStart $nameCharEnd]]
            set value [string trim [string range $line $valueCharStart $valueCharEnd]]
            dict set db $section $name $value

        }
    }

    # It is possible that the global parameter section may be empty if there
    # were no non-default parameters. If so, create an empty dictionary for it.
    if {![dict exists $db $::sdx::paramSectionName]} {
        dict set db $::sdx::paramSectionName [dict create]
    }
}

proc diff_settings { oldDb newDb previousSynthName currentSynthName previousImplName currentImplName xpFilename tclFilename } {

    if {[catch {open $xpFilename w} xpFile]} {
      send_msg_id SDx-intertools-001 ERROR "failed to open file for write ($xpFilename)\n"
      return -1
    }
    if {[catch {open $tclFilename w} tclFile]} {
      send_msg_id SDx-intertools-001 ERROR "failed to open file for write ($tclFilename)\n"
      return -1
    }

    # This currently compares entries, but makes no effort to find orphans
    # (in one database but not the other) for properties. We presume that
    # the dump will have all properties. This will run afoul if the databases
    # are from different versions of Vivado. For the global parameters, only
    # non-default values are put in the dump/database, so those need to be
    # handled differently to find orphans, and to change settings.

    set nameMap($previousSynthName) $currentSynthName
    set nameMap($previousImplName) $currentImplName

    set oldEntries [dict create]
    dict for {section oldEntries} $oldDb {
        
        set splitList [split $section ":"]
        set sectionType [lindex $splitList 0]
        set sectionName [lindex $splitList 1]
        set newSection $section

        if {$sectionType eq "RUN"} {
            # Is this an OOC run, or a "primary" run. If it is an OOC run, we will
            # consider it as long as it exists in the project. If it is a primary
            # run, we only consider it if it is the previous run of interest.
            set actualRun [get_runs $sectionName]
            if {[llength $actualRun] != 1} { 
                # Run does not exist in the current project. Skip it, as saving
                # settings for it doesn't make sense. Note that this prevents us
                # from carrying out the full functionality of the proc interface.
                # We won't compare a synth_2 run to synth_3 if synth_2 doesn't
                # exist in the current project. This is o.k. for now, as current
                # calling usage always compares to *_1 as the old run if the
                # corresponding run doesn't exist in the old database.
                continue
            }
            set runFS [get_property srcset $actualRun]
            if {[get_property fileset_type $runFS] == "BlockSrcs"} {
                # Run is OOC. Consider it.
                set targetRunName $sectionName
            } else {
                # Run is "primary". But do we care about it?
                if {[info exists nameMap($sectionName)]} {
                    set newSection "RUN:$nameMap($sectionName)"
                    if {[get_property is_synthesis $actualRun]} {
                        set targetRunName $::sdx::primary_synth_name
                    } else {
                        set targetRunName impl_1
                    }
                } else {
                    # We don't care about this run.
                    continue
                }
            }
        }

        # Tcl
        set preTcl "set_property"
        switch $sectionType {
            PARAM   { set preTcl "set_param"; set postTcl "" }
            PROJECT { set postTcl "\[current_project]" }
            FILESET { set postTcl "\[get_filesets $sectionName\]" }
            RUN     { set postTcl "\[get_runs $targetRunName\]" }
        }
        # XP
        switch $sectionType {
            PARAM   { set preXP "vivado_param:" }
            PROJECT { set preXP "vivado_prop:project.__CURRENT__." }
            FILESET { set preXP "vivado_prop:fileset.$sectionName." }
            RUN     { set preXP "vivado_prop:run.$targetRunName." }
        }

        dict for {name oldValue} $oldEntries {
            if {$name eq "NAME" || $name eq "NEEDS_REFRESH" || $name eq "DESCRIPTION"} {
                # We don't want to set these in the new project.
                continue
            }          
            set found [dict exists $newDb $newSection $name]
            if {$found} {
                set newValue [dict get $newDb $newSection $name]
                set newString "\{$newValue\}"
            } else {
                set preTcl "re${preTcl}"
                set newString ""
            }
            if {!$found || $newValue != $oldValue} {
                puts $tclFile "$preTcl \{$name\} $newString $postTcl"
                puts $xpFile "$preXP\{$name\}=$newString"
            }  
        }
    }

    # The above covered params in the old database but not in the new one.
    # It didn't cover params in the new database but not in the original.
    dict for {name newValue} [dict get $newDb $::sdx::paramSectionName] {
        if {![dict exists $oldDb $::sdx::paramSectionName $name]} {
            puts $tclFile "set_param $name $newValue"
            puts $xpFile "vivado_param:\{$name\}=\{$newValue\}"
        }
    }

    close $tclFile
    close $xpFile
}

proc get_run {} {
  if {[get_param project.sdxInteractiveUseCurrentRun]} {
    set run [current_run -implementation]
  } else {
    set run [get_runs impl_1]
  }
  return $run
}

proc get_last_run_time {run} {
  set runTime {}
  if {[get_property CAN_OPEN_RESULTS $run]} {
    set runDir [get_property DIRECTORY $run]
    set endFile "$runDir/.vivado.end.rst"
    if {[file exists $endFile]} {
      set runTime [file mtime $endFile]
    }
  }
  return $runTime
}

proc has_new_run {} {
  set run [::sdx::get_run]
  set newRunTime [::sdx::get_last_run_time $run]
  # New run has no time, so it isn't complete.
  if {$newRunTime eq {}} { return 0 }
  # If the current run name is different from the run name that we started
  # with, we consider that a change worthy of export, as per CR-1019045.
  if {$run ne $::sdx::initRun} { return 1 }
  # No entry in the array indicates run didn't exist before, so it is newly run.
  if {![info exists ::sdx::initRunTime($run)]} { return 1 }
  # Emptry string indicates run had not previously completed, so it is newly run.
  if {$::sdx::initRunTime($run) eq {}} { return 1 }
  # Compare the times.
  if {$newRunTime > $::sdx::initRunTime($run) } { return 1 } else { return 0 }
}

proc repair_init {} {

  set ::sdx::initRun [::sdx::get_run]

  set ::sdx::firstName $::output_dir/settings_0.log

  # If there is already a settings file, we don't need to write a new one.
  # We presume the last one is good and the user isn't editing things on the sly.
  set ::sdx::initName [::sdx::get_latest_name]
  if {$::sdx::initName eq {}} {
    # No settings file exists, so write out the first one.
    set ::sdx::initName $::sdx::firstName
    sdx::write_settings $::sdx::initName
  }

  # Do some tracking so we can determine if the user successfully completes
  # a synth or impl run during the interactive session.
  # For simplicity, and in case the user switches around what run they are
  # working on, record the times of all runs.
  foreach run [get_runs] {
    set ::sdx::initRunTime($run) [::sdx::get_last_run_time $run]
  }
}

proc exit_actions {} {
  # If there is a current project, take action as if it were closing
  if {[current_project -quiet] ne {}} {
    close_project_actions
  }
}

proc close_project_actions {} {
  set cp [current_project -quiet]
  if {$cp eq {}} {
    puts "ERROR: No current project open during close_project_actions"
    return
  }

  # Dump current settings
  set ::sdx::newName [::sdx::get_next_name]
  sdx::write_settings $::sdx::newName

  # With single project flow, there should be a synth run with name
  # ::sdx::primary_synth_name, and an implementation run, impl_1.
  # After that, the user can create new runs, eventually deciding on
  # one that works, which should be the "current" run, as returned by the
  # current_run Tcl command. If the parameter project.sdxInteractiveUseCurrentRun
  # is true, we should key off of this run for recording settings differences.
  # But what do we compare it to? This depends on whether we are doing the
  # cumulative difference or a delta, and in the case of a user created run,
  # whether the run exists in the previous database.

  # CUMLATIVE DIFFERENCE
  sdx::read_settings $::sdx::firstName firstDb
  sdx::read_settings $::sdx::newName newDb

  set outputIniName xocc.ini
  set outputTclName hook.tcl

  # We don't support the user creating and using different synth runs with the
  # single project flow, so previousSynthName and currentSynthName are the same.
  set previousSynthName $::sdx::primary_synth_name
  set currentSynthName $previousSynthName
  set previousImplName impl_1
  set currentImplName [get_property name [::sdx::get_run]]

  sdx::diff_settings $firstDb $newDb $previousSynthName $currentSynthName $previousImplName $currentImplName $outputIniName $outputTclName

  # DELTA DIFFERENCE
  if {$::sdx::initName != $::sdx::firstName} {

    sdx::read_settings $::sdx::initName initDb

    # Get the number out of $::sdx::newName
    set under_index [string last _ $::sdx::newName]
    set dot_index [string last ".log" $::sdx::newName]
    set num [string range $::sdx::newName $under_index+1 $dot_index-1]
    set outputIniName $::output_dir/xocc_${num}.ini
    set outputTclName $::output_dir/hook_${num}.tcl

    # Figure out what runs to compare to.
    if {$currentSynthName != $previousSynthName} {
      # A new run has been created. Does it exist in the previous database?
      set sectionName "RUN:$currentSynthName"
      if {[dict exists $initDb $sectionName]} {
        set previousSynthName $currentSynthName
      }
      # else it does not exist in the previous log. We might have a run "synth_3",
      # in which case an argument could be made that we should try to compare to
      # "synth_2", but these names are arbitrary and controlled by the user. They
      # could be anything and there is no guarantee that synth_2, if it even exists,
      # was immediately used before synth_3. So if the run doesn't exist in the
      # previous database, just leave things as is, which means compare to the
      # _1 run.
    }
    # Like above for synth, but now for impl.
    if {$currentImplName != $previousImplName} {
      set sectionName "RUN:$currentImplName"
      if {[dict exists $initDb $sectionName]} {
        set previousImplName $currentImplName
      }
    }

    sdx::diff_settings $initDb $newDb $previousSynthName $currentSynthName $previousImplName $currentImplName $outputIniName $outputTclName
  }

}

}; # end of namespace ::sdx

rename close_project __orig_close_project
proc close_project {args} {
  catch { sdx::close_project_actions } ignore_err
  array set arg $args
  __orig_close_project {*}[array get arg]
}

rename exit __orig_exit
proc exit {{status 0}} {
  catch { sdx::exit_actions } ignore_err
  __orig_exit $status
}
