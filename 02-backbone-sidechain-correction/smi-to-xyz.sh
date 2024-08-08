#!/bin/bash
folder=newSMILES-XYZ
mkdir ${folder}
count=$(ls -d newSMILES-smi/donor*smi|wc -l)
cd ${folder}
#for i in $(seq 1 ${count});do
#for i in $(seq 401 800);do
for i in $(seq 801 1115);do
	echo ${i}
	obabel -i smi ../newSMILES-smi/donor-${i}.smi -o xyz  -m -h --gen3d
done

#grep -B 3 failed smi-to-xyz.err|awk 'NR%5==1' >openbabel_fail.dat 
