namespace eval ocl_util {

    proc log_active_task {logfile taskname} {
    set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]

    set filename $logfile
    set temp     $filename.new.$timestamp

    set in  [open $filename r]
    set out [open $temp     w]

    # line-by-line, read the original file looking for active task
    set newcompleted ""
    while {[gets $in line] != -1} {
        if {[string match "*activeTask*" $line]} {
            set fields [split $line {":" " " ","}]
            foreach item $fields {
                if {[string match "" $item]} {
                    continue
                }
                
                if {[string match "activeTask" $item]} {
                    continue
                }
                set newcompleted $item
            }
        }
    }

    close $in

    # generate an updated file
    set in1 [open $filename r]
    while {[gets $in1 line] != -1} {
        if {[string match "*activeTask*" $line]} {
            puts $out "\"activeTask\": \"$taskname\","
        } elseif {[string match "*completedTask*" $line]} {
            puts $out "\"completedTask\": \"$newcompleted\","
        } else {
           # write the original line
           puts $out $line
        }
    }

    close $in1
    close $out

    # move the new data to the proper filename
    file rename -force $temp $filename 

    }
}

