#PBS -N BatchReactorRun1
#PBS -m ae
#PBS -M ah.rabiee72@gmail.com
#PBS -l nodes=1:ppn=8
cd RUN/AllRotorCase


# Run OpenFOAM

source /share/apps/OpenFOAM/OpenFOAM-6/etc/bashrc

mpirun -n 8 pimpleDyMTransportFoam -parallel  > log1

mv postProcessing postProcessing1

reconstructPar -time 72

tar cf 72_1.tar 72

rm -rf processor* 72 

blockMesh

topoSet

sed -i '/deltaT/c\deltaT    .0006;' system/controlDict

decomposePar

mpirun -n 8 pimpleDyMTransportFoam -parallel  > log2

mv postProcessing postProcessing2

reconstructPar -time 72

tar cf 72_2.tar 72

