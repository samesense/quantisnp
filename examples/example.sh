#!/bin/csh

#
# EXAMPLE SHELL SCRIPT FOR RUNNING QUANTISNP 2
#

# define program variables
set EMITERS 		= 10											# number of EM iterations to use during training
set LSETTING 		= 2000000										# characteristic CNV length parameter
set GCDIR 			= /data/suzaku/yau/cnv/gc/b35/						# set path to GC data files (contents of gc_data.zip)
set SUBSAMPLELEVEL  = 1 											# number of sub-samples to use
set PARAMSFILE 		= ../config/params.dat									# path to parameters file
set LEVELSFILE 		= ../config/levels.dat									# path to levels file
set CHRRANGE 		= 1:23												# path to parameters file
set CHRX 			= 23												# which chromosome is X?

set OUTDIR 			= /data/suzaku/yau/QuantiSNP2/output/testexe/			# output directory

set SAMPLEID 		= OX1											# sample name
set GENDER 			= female										# sample gender
set INFILE 			= /data/suzaku/yau/cnv/WTCHG/HumanHap300/OX1.txt	# input data file


# set path to MCR Run-Time Libraries
set MCRROOT		= /data/suzaku/yau/MCR/r2008b/v79/

mkdir -p $OUTDIR

../linux64/run_quantisnp2.sh $MCRROOT --chr $CHRRANGE --outdir $OUTDIR --sampleid $SAMPLEID --gender $GENDER --emiters $EMITERS --lsetting $LSETTING --gcdir $GCDIR --plot --genotype --config $PARAMSFILE --levels $LEVELSFILE --input-files $INFILE --chrX $CHRX --doXcorrect

echo "EXAMPLE END"
