source ./config.sh

idSample="NA18486"
inputBam="${project}output-data/NA18486.analysis-ready.bam"
outputDir="${project}reports/qualimap/${idSample}"

mkdir -p "${outputDir}"

$qualimap bamqc \
    -bam ${inputBam} \
    -outdir ${outputDir}
