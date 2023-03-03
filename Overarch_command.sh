#!/bin/bash

#SBATCH --output=slurm-%a.log
#SBATCH --cpus-per-task=
#SBATCH --mem-per-cpu=
#SBATCH --time=
#SBATCH --array=
#SBATCH --account=

:'
### This script execute each line of cmds.txt (which can be generated using a script such as Generator.sh/Base_Script.sh) 


'

eval $(head -n $SLURM_ARRAY_TASK_ID cmds.txt | tail -n 1)
