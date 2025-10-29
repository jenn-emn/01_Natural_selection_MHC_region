#!/bin/bash


# Variant Quality Control
#  - Hardy-Weinberg Equilibrium, excluding p-value < 1e-5
#  - Linkage disequilibrium, pruning (indep−pairwise 50 5 0.5)
#  - Minor allele frequency, excluding MAF < 0.01
#  - Missing genotype, excluding > 5% missingness.
#  - Swaps correction.
#  - Flips correction.
#
# Sample Quality Control
#  - Missing genotype, remove > 10% missingness.
#  - Kinship of third degree, (or GRM > 0.125) (--geno 0.05, --hwe 1e-5, --maf 1e-4, --indep−pairwise 50 5 0.5, --king-cutoff / --rel-cutoff)
#  - Sex discrepancy
#  - Heterozygosity


# paths
vcf1kgp="/home/jennifer/02_data/02_data_reference/1kgp/1kgp.chr6.vcf.gz"
    # 3202 samples (1603 females, 1598 males, 1 ambiguous; 2583 founders)
    # 4315217 variants
vcfhgdp="/home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6.vcf.gz"
    # 929 samples (317 females, 612 males; 929 founders)
    # 4495706 variants
out_path="/home/jennifer/02_data/03_data_processing/01_qc_GA"


# Populations selection from 1kgp
# AFR: Gambian, Kenya, Nigeria, Sierra Leone
    # ESN  Esan in Nigeria
    # GWD  Gambian in Western Division, The Gambia
    # LWK  Luhya in Webuye, Kenya
    # MSL  Mende in Sierra Leone
    # YRI  Yoruba in Ibadan, Nigeria
# EAS: China, Japan, Vietnam
    # CDX  Chinese Dai in Xishuangbanna, China
    # CHB  Han Chinese in Bejing, China
    # CHD  Chinese in Denver, Colorado
    # CHS  Southern Han Chinese, China
    # JPT  Japanese in Tokyo, Japan
    # KHV  Kinh in Ho Chi Minh City, Vietnam
# EUR: Finland, Italy, Spain, United Kingdom
    # FIN  Finnish in Finland
    # TSI  Toscani in Italy
    # IBS  Iberian populations in Spain
    # GBR  British in England and Scotland


# Populations selection from HGDP
# AFR: Congo, Kenya, Namibia, Nigeria, South Africa, Senegal
# EAS: Cambodia, China, Japan
# EUR: France, Italy


# QC 1kgp


# QC HGDP


# end