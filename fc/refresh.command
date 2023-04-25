#!/bin/bash
workdir=$(cd $(dirname $0); pwd)
cd $workdir
roms=`ls roms`
result=""
for i in $roms; do
	if [[ $i == *.nes || $i == *.NES ]]; then
		if [[ $result == "" ]]; then
			result=$i
		else
			result=$result,$i
		fi
	fi
done
echo $result > roms.json