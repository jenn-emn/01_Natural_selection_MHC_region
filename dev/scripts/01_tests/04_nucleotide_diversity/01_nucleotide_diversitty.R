
########## Example of nucleotide diversity ##########
#
# - HMC frame in the GRCh38 human genome assembly https://www.sciencedirect.com/science/article/pii/S1357272520301990
# - HLA-A frame https://www.ncbi.nlm.nih.gov/gene/3105
# - HLA-C frame 
# - HLA-B frame https://www.ncbi.nlm.nih.gov/gene/3106/
# - Tutorial https://wurmlab.com/genomicscourse/2016-SIB/practicals/population_genetics/popgen
# - PopGenome https://github.com/pievos101/PopGenome
# - 

#R.version
#install.packages("devtools")
#devtools::install_github("pievos101/PopGenome")
#install.packages("BiocManager")
#BiocManager::install("SNPRelate")
#install.packages("dartR")
#BiocManager::install("SeqArray")
#devtools::install_github("thierrygosselin/radiator")

rm(list=ls())
library(PopGenome)
library(pegas)
library(dartR)
library("radiator")

input="/home/jenn/genevol/data/data_reference/1kgp/all_hg38"


# create a VCF just with MHC genotypes
#cmd=paste0("/home/jenn/genevol/tools/plink2 ",
#    " --pfile ", input, " ",
#    " --chr 6 --from-bp 28510120 --to-bp 33480577  --recode vcf bgz ",
#    " --out /home/jenn/genevol/data/data_reference/1kgp/all_hg38_mhc ")
#system(cmd)


# create a VCF just with HLA-A and HLA-B genotypes
# HLA-A 29942532 29945870 ; HLA-C 31268749 31272092; HLA-B 31353875 31357179
#cmd=paste0("/home/jenn/genevol/tools/plink2 ",
#    " --vcf /home/jenn/genevol/data/data_reference/1kgp/all_hg38_mhc.vcf.gz ",
#    " --chr 6 --from-bp 29942532 --to-bp 31357179  --recode vcf bgz ",
#    " --out /home/jenn/genevol/data/data_reference/1kgp/all_hg38_hla.a.b ")
#system(cmd)


# get sample names
#cmd=paste0("/home/jenn/genevol/tools/bcftools/bcftools query -l ",
#    " /home/jenn/genevol/data/data_reference/1kgp/all_hg38_mhc.vcf.gz > ",
#    " /home/jenn/genevol/data/data_reference/1kgp/all_hg38_mhc.sample.names.txt")
#system(cmd)


# get snp matrix
#cmd=paste0("/home/jenn/genevol/tools/bcftools/bcftools query ",
#    " /home/jenn/genevol/data/data_reference/1kgp/all_hg38_hla.a.b.vcf.gz ",
#    " -f '%CHROM\t%POS[\t%GT]\n' > ",
#    " /home/jenn/genevol/data/data_reference/1kgp/all_hg38_hla.a.b.snp.matrix.txt")
#system(cmd)


# input the SNP data and the sample names
snp_matrix   <- read.table("/home/jenn/genevol/data/data_reference/1kgp/all_hg38_mhc.snp.matrix.txt")
head(snp_matrix)

sample_names <- read.table("/home/jenn/genevol/data/data_reference/1kgp/all_hg38_mhc.sample.names.txt")
sample_names <- sample_names$V1
sample_names

# Keep the position of the loci
loci       <- snp_matrix[,1:2]
colnames(loci) <- c("scaffold", "position")



#end