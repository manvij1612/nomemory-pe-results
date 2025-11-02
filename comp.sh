#!/bin/bash
#SBATCH --job-name=comparison
#SBATCH --mem=16GB
#SBATCH --time=2:00:00
#SBATCH --cpus-per-task=4
#SBATCH --output=comparison_%j.log

module load conda/latest
conda activate /home/mjain2_umassd_edu/miniforge3/envs/igwn-py310

summarypages \
  --webdir comparison_html \
  --samples lalsim_html/pesummary/samples/posterior_samples.h5 \
            gwsurr_html/pesummary/samples/posterior_samples.h5 \
            gwsurr_mem/pesummary/samples/posterior_samples.h5 \
