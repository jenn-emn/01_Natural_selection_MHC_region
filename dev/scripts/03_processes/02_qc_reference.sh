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


# QC 1kgp



# end