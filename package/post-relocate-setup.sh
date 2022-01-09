if [ -d "/opt/petalinux/2021.1/sysroots/x86_64-petalinux-linux/post-relocate-setup.d/" ]; then
	# Source top-level SDK env scripts in case they are needed for the relocate
	# scripts.
	for env_setup_script in /opt/petalinux/2021.1/environment-setup-*; do
		. $env_setup_script
		status=$?
		if [ $status != 0 ]; then
			echo "$0: Failed to source $env_setup_script with status $status"
			exit $status
		fi

		for s in /opt/petalinux/2021.1/sysroots/x86_64-petalinux-linux/post-relocate-setup.d/*; do
			if [ ! -x $s ]; then
				continue
			fi
			$s "$1"
			status=$?
			if [ $status != 0 ]; then
				echo "post-relocate command \"$s $1\" failed with status $status" >&2
				exit $status
			fi
		done
	done
	rm -rf "/opt/petalinux/2021.1/sysroots/x86_64-petalinux-linux/post-relocate-setup.d"
fi
