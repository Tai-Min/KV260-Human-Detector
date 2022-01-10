#!/bin/sh
for py in python python2 python3
do
	PYTHON=`which ${py} 2>/dev/null`
	if [ $? -eq 0 ]; then
		break;
	fi
done

if [ x${PYTHON} = "x"  ]; then
	echo "SDK could not be relocated.  No python found."
	exit 1
fi