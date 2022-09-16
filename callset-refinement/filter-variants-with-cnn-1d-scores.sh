source ./config.sh

idSample="NA18486"

vcf="${project}/working-data/NA18486.cnn-1d.vcf.gz"
snpDatabases="${project}reference-data/gatk-resource-bundle/1000G_phase1.snps.high_confidence.hg38.vcf.gz"
indelDatabases="${project}reference-data/gatk-resource-bundle/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz"

gatk FilterVariantTranches \
    -V ${vcf} \
    --resource ${snpDatabases} \
    --resource ${indelDatabases} \
    --info-key CNN_1D \
    --snp-tranche 99.95 \
    --indel-tranche 99.4 \
    -O ${project}/output-data/${idSample}.analysis-ready.vcf.gz

