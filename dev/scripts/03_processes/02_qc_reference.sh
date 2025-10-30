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
# awk 'NR > 1 {print $6, $3}'   /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6.psam | \
#   sort -u >   /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp_wgs.20190516.populations.txt

# AFR: Congo, Kenya, Namibia, Nigeria, South Africa, Senegal
    # AFRICA BantuKenya - Kenya
    # AFRICA BantuSouthAfrica - South Africa
    # AFRICA Biaka - Congo
    # AFRICA Mandenka - Senegal
    # AFRICA Mbuti - Congo
    # AFRICA San - Namibia
    # AFRICA Yoruba - Nigeria
# EAS: Cambodia, China, Japan
    # EAST_ASIA Cambodian - Cambodia
    # EAST_ASIA Dai - China
    # EAST_ASIA Daur - China
    # EAST_ASIA Han - China
    # EAST_ASIA Hezhen - China
    # EAST_ASIA Japanese - Japan
    # EAST_ASIA Lahu - China
    # EAST_ASIA Miao - China
    # EAST_ASIA Mongolian - China
    # EAST_ASIA Naxi - China
    # EAST_ASIA NorthernHan - China
    # EAST_ASIA Oroqen - China
    # EAST_ASIA She - China
    # EAST_ASIA Tu - China
    # EAST_ASIA Tujia - China
    # EAST_ASIA Xibo - China
    # EAST_ASIA Yakut - Russia
    # EAST_ASIA Yi - China
# EUR: France, Italy
    # EUROPE Adygei - Russia
    # EUROPE Basque - France
    # EUROPE BergamoItalian - Italy
    # EUROPE French - France
    # EUROPE Orcadian - Escócia (UK)
    # EUROPE Russian - Russia
    # EUROPE Sardinian - Italy
    # EUROPE Tuscan - Italy

# Excluding the population:
#grep -v -E "AMERICA|CENTRAL_SOUTH_ASIA|Yakut|Adygei|Orcadian|Russian" \
#    /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6.psam  > \
#    /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6.selected.pops.psam







# QC 1kgp


# QC HGDP


# end