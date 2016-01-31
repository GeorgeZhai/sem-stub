#!/bin/bash


echo "starting ...."
fulldirfile=$(readlink -f $BASH_SOURCE)
script_dir=$(dirname $fulldirfile)

#echo $fulldirfile
#echo $script_dir

filelog=$script_dir"/../log/sem-stub.log"
fileerr=$script_dir"/../log/sem-stub.err"
fileout=$script_dir"/../log/sem-stub.out"
touch $filelog
touch $fileerr
touch $fileout


forever start --append -l $filelog -o $fileout -e $fileerr  --sourceDir $script_dir --workingDir $script_dir --uid "sem-stub" index.js

forever list

