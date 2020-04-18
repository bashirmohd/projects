NERSC
ssh mohammed@cori.nersc.gov
pn:Lonely1982$9869+OTP

TO TRANSFER FOLDER
 scp -r esnet  mohammed@cori.nersc.gov://global/homes/m/mohammed/projects

vim test.sh

sbatch test.sh

 
squeue | grep mohammed

squeue -j 29354436

sacct -j 29354436

scancel 29354436

sacct --allocations


rm myfile.out rm myfile.err rm slurm-29354395.out



#!/bin/bash
#SBATCH --qos=premium
#SBATCH -t 01:00:00
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --constraint=haswell
module load python/3.7-anaconda-2019.10
module load tensorflow/intel-1.15.0-py37
python test2.py 1>> myfile.out 2>> myfile.err



srun check-mpi.intel.cori


salloc -N1 -n1 -C haswell --exclusive -q interactive -t 60

lstopo