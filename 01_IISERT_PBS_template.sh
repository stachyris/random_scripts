#PBS -N job_name
#PBS -q iiser
#PBS -l select=1:ncpus=10
#PBS -l walltime=96:00:00
#PBS -V
#PBS -o log.o
#PBS -e log.err

ncores=`cat $PBS_NODEFILE|wc -l`


#source /home/app/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mkl/bin/mklvars.sh intel64

cd $PBS_O_WORKDIR
