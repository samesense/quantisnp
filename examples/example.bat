rem define program variables

rem number of EM iterations to use during training
set EMITERS=10

rem characteristic CNV length parameter
set LSETTING=2000000

rem set path to GC data files (contents of gc_data.zip)
set GCDIR=D:\QuantiSNP\gc\b35\

rem number of sub-samples to use
set SUBSAMPLELEVEL=10

rem path to parameters file
set PARAMSFILE=config/params.dat

rem path to levels file
set LEVELSFILE=config/levels.dat

rem path to parameters file
set CHRRANGE=[1:23]

rem which is the X chromosome
set CHRX=23

rem output directory
set OUTDIR=D:\QuantiSNP2\temp\

rem sample name
set SAMPLEID=AA
rem sample gender
set GENDER=female
rem input data file
set INFILE=D:\OncoSNP2\samples\AA.txt

D:\QuantiSNP2\release\11102009\binaries\win32\quantisnp2.exe  --chr %CHRRANGE% --outdir %OUTDIR% --sampleid %SAMPLEID% --gender %GENDER% --emiters %EMITERS% --lsetting %LSETTING% --gcdir %GCDIR% --plot --genotype --config %PARAMSFILE% --levels %LEVELSFILE% --input-files %INFILE% --chrX %CHRX% --doXcorrect
