#!/bin/bash -l
module load salmon
# qsub options
#$ -P bf528 # project
#$ -pe mpi_16_tasks_per_node 16
#$ -l h_rt=48:00:00 # maximum run time
#$ -N all_salmon # job name
#$ -j y # join stdout and stderr
#$ -o all_salmon.qlog  # log file name

# job info
echo "=========================================================="
echo "Start date : $(date)"
echo "Job name : $JOB_NAME"
echo "Job ID : $JOB_ID"
echo "=========================================================="
echo ""


salmon alevin -l ISR -1 SRR3879604_1_bc.fastq.gz SRR3879605_1_bc.fastq.gz SRR3879606_1_bc.fastq.gz -2 SRR3879604_2.fastq.gz SRR3879605_2.fastq.gz SRR3879606_2.fastq.gz --end 5 --barcodeLength 19 --umiLength 6 -i index -p 10 --whitelist all_wl.txt -o salmon_output_1 --tgMap txp2gene.tsv --dumpMtx

echo "Analysis complete!"





