
source ./config.sh

idSample="NA18486"
inputVCF="${project}output-data/${idSample}.analysis-ready.vcf.gz"
annotationDataSources="${project}reference-data/funcotator_dataSources.v1.7.20200521g/"

$gatk Funcotator \
    -R ${fasta} \
    -V ${inputVCF} \
    -O ${project}output-data/${idSample}.annotated.vcf.gz \
    --output-file-format VCF \
    --data-sources-path ${annotationDataSources} \
    --ref-version hg38
