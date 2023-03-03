#!/bin/bash

:'

## This is an exemple 
'


# module load XXXXXXXX
EXECUTOR -i1 "$PATH1"/"$CHROM".vcf.gz -i2 "$PATH2"/"$CHROM".vcf.gz -c "$CHROM" -b $starter -e $ender -o "$output"/"$CHROM"_"$starter"_"$ender"
