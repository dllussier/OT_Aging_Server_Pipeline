#!/bin/bash
#SBATCH --account=<group>
#SBATCH --qos=<group>
#SBATCH --job-name=hsfeat
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=<email_associated_with_hipergator_account>
#SBATCH --ntasks=1
#SBATCH --mem=4gb
#SBATCH --time=6:00:00
#SBATCH --output=hsfeat_%j.out
pwd; hostname; date

module load fsl/5.0.10

feat hsFEAT.fsf
date
