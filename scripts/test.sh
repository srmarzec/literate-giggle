#!/bin/bash
#SBATCH --job-name=htseq_count_test2 --output=%x.%j.out
#SBATCH --mail-type=END,FAIL --mail-user=sm3679@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=4:00:00
#SBATCH --mem=4G

#-----------------------------------------------------------------------------#
# This script uses htseq to count and assign reads to genes #
#-----------------------------------------------------------------------------#

source /home/sm3679/python-env/bin/activate

#- RUN htseq ----------------------------------------------------------------#

/home/sm3679/python-env/bin/htseq-count -f bam -r pos -s no -t gene -i gene_id /home/sm3679/culex_biting/bam_dir/M1_S4_Aligned.out.bam /home/sm3679/culex_biting/culex_genome/GCF_015732765.1_VPISU_Cqui_1.0_pri_paternal_genomic.gtf > /home/sm3679/culex_biting/test/M1_S4_htseqCount_gene

#- FIN -----------------------------------------------------------------------#
