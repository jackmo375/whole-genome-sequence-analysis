# this script is a guide. run the commands below 1 by one.
# Do not run this whole script!

# identify a read with known duplicates
./pipelines/print-duplicate-reads.sh | less

# inspect the read
samtools view working-data/NA18486.md.bam | grep 'SRR011037.821488        '

# look for duplicate reads by sequence similarity
samtools view working-data/NA18486.md.bam | grep '        GGTTACAGAGTGTGCGGTGA'

# are all the reads in the output for this last commmand flagged with 1024?
# should be one in this list without the 1024 flag, that was the read gatk
# decided was the best read for this fragment.

# careful when copying commands!the spaces in the strings above should be tabe but 
# nano converts tabs to spaces! need to convert back to tab when running the above commmands
