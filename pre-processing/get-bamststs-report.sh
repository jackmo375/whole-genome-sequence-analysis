source ./config.sh

idSample="NA18486"
inputBam="${project}output-data/NA18486.analysis-ready.bam"
outputDir="${project}reports/bamstats/${idSample}/"

mkdir -p ${outputDir}

java -jar ${bamstatsJar} generate \
    -R ${fasta} \
    -o ${outputDir} \
    -b ${inputBam}
