#!/bin/bash

BASE=https://github.com/ecell/ecell-deb/blob/master

# header
echo '# E-Cell deb files'
echo

for x in */; do
  echo '##' $x | tr -d /
  for deb in $x/*.deb;do
    name=`basename $deb | cut -d_ -f1`
    echo $name '*' "[$name](${BASE}/${deb}?raw=true)" 
  done | sort | cut -d' ' -f2-
  echo
done
