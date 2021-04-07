#!/bin/bash

OUTFILE="spraying_passwords.txt"

echo "NOTE: Add any target specific passes to this list."
echo

for w in $(cat input_passes.txt); do echo $w ; echo ${w}1 ; echo ${w}12 ; echo ${w}123 ; echo ${w}2019 ; echo ${w}2020 ; echo ${w}2021 ; done > t
cp t $OUTFILE
rm t
for w in $(cat $OUTFILE); do echo $w ; echo ${w}\! ; echo ${w}\# ; done > t
cp t $OUTFILE
rm t

echo "... snip..."
tail $OUTFILE
RESULTS=$(cat $OUTFILE | wc -w)
echo
echo "[*] Results: $RESULTS"
echo "[*] COMPLETE."
