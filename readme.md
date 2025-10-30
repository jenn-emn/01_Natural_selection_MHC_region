
 # Project: Natural selection in the MHC region of human populations

 - All literature is in a [Drive folder](https://drive.google.com/drive/folders/1-vxYakHmMx_JnguiSXql8hGfvvYGoM34?usp=drive_link)
 - All data is in the HPC.



## Tools

- [admixture (global ancestry)](https://dalexander.github.io/admixture/download.html)
- [bcftools from samtools](https://samtools.github.io/bcftools/howtos/install.html)
- [flare (local ancestry)](https://github.com/browning-lab/flare)
- [gnomix (local ancestry)](https://github.com/AI-sandbox/gnomix)
- [plink 1.9, Linux 64-bit stable](https://www.cog-genomics.org/plink/1.9/)
- [plink 2.0, Linux 64-bit alpha](https://www.cog-genomics.org/plink/2.0/)
- [rfmix 2.0 (local ancestry)](https://github.com/slowkoni/rfmix)
- [shapeit5 (phasing)](https://odelaneau.github.io/shapeit5/)



## Data



> ############################################################################
> - Total reference European samples: 572.
> - Total reference African samples: 871.
> - Total reference East Asian samples: 787.
> - Other reference samples: 1,168.
>
> ############################################################################



#### :sparkles: **Reference data from 1000 Genome Project** :sparkles:

> - European samples: 486. Subpopulations: Spain, Finland, Italy and United Kingdon.
> - African samples: 871. Subpopulations: Gambia, Kenya, Nigeria and Sierra Leone.
> - East Asia samples: 617. Subpopulations: China, Japan and Vietnam.
> - Othe samples: 732. Subpopulations: Pakistan, Bangladesh, Sri Lanka, India and USA.


- [Publication](https://www.nature.com/articles/nature15393)
- [Acronyms of populations](https://mathgen.stats.ox.ac.uk/impute/1000GP_Phase3.html)
  - AFR: Gambian, Kenya, Nigeria, Sierra Leone
    - ESN  Esan in Nigeria
    - GWD  Gambian in Western Division, The Gambia
    - LWK  Luhya in Webuye, Kenya
    - MSL  Mende in Sierra Leone
    - YRI  Yoruba in Ibadan, Nigeria
  - EAS: China, Japan, Vietnam
    - CDX  Chinese Dai in Xishuangbanna, China
    - CHB  Han Chinese in Bejing, China
    - CHD  Chinese in Denver, Colorado
    - CHS  Southern Han Chinese, China
    - JPT  Japanese in Tokyo, Japan
    - KHV  Kinh in Ho Chi Minh City, Vietnam
  - EUR: Finland, Italy, Spain, United Kingdom
    - FIN  Finnish in Finland
    - TSI  Toscani in Italy
    - IBS  Iberian populations in Spain
    - GBR  British in England and Scotland
- Download the [pgen/pvar/psam files](https://www.cog-genomics.org/plink/2.0/resources#phase3_1kg)
- 1kgp.chr6.pfiles have 3,202 samples with 4,315,217 variants.

- 300 trios:
  - 1st degree (--king-cutoff 0.177): deg1_hg38.king.cutoff.out.id (621 samples)
  - 1st+2nd degree (--king-cutoff 0.0884): deg2_hg38.king.cutoff.out.id (629 samples)
  - 1st/2nd-degree list (--make-king-table + --king-table-filter): "deg2_hg38.kin0" file.



#### :sparkles: **Reference data from HGDP** :sparkles:

> - European samples: 86. Subpopulations: France and Italy.
> - African samples: 88. Subpopulations: South Africa, Senegal, Nigeria, Nambia, Kenya and Congo.
> - East Asia samples: 170. Subpopulations: China, Japan and Cambodia.

 - [Paper link](https://pmc.ncbi.nlm.nih.gov/articles/PMC7115999/). 930 participants.
 - [Data link](https://ngs.sanger.ac.uk/production/hgdp/hgdp_wgs.20190516/).
 - [Metadata](https://ngs.sanger.ac.uk/production/hgdp/hgdp_wgs.20190516/metadata/), population and super-population informations about all participants (930) is available.
 - Populations
  - AFR: South Africa, Senegal, Nigeria, Nambia, Kenya and Congo
    - BantuKenya - Kenya
    - BantuSouthAfrica - South Africa
    - Biaka, Mbuti - Congo
    - Mandenka - Senegal
    - San - Namibia
    - Yoruba - Nigeria
  - EAS: China, Japan and Cambodia
    - Cambodian - Cambodia
    - Dai, Daur, Han, Hezhen, Lahu, Miao, Mongolian, Naxi, Northern Han, Oroqen, She, Tu, Tujia, Xibo, Yi - China
    - Japanese - Japan
    - Yakut - Russia
  - EUR: France and Italy
    - Adygei, Russian - Russia
    - Basque, French - France
    - BergamoItalian, Sardinian, Tuscan - Italy
    - Orcadian - Scotland (UK)

 - Filtered HGDP is available.
 > /home/DATA/HGDP_vcf/HGDP_parental/README.txt
 >
 > O dados do HGDP (a partir dos dados que a Flávia filtrou e faseou, em /media/storage/genevol/hgdp3.0_filter/phased/) para as análises de ancestralidade Global e Local para o REDS-III. De forma geral, foi feito:
 > 1. Manter as populações Africanas, Europeias e Nativo Americanas do HGDP
 > 2. Filtro para manter bialélicos e remover indels
 > 3. Filtros para HWE e MAF (separadamente para cada subpopulação)
 > 4. Filtro para indivíduos miscigenados (através de ADMIXTURE não supervisionado)
 > 5. Filtro para Indivíduos aparentados (através do KING)
 > 6. PCA
 >
 > O dado está bastante filtrado, e está pronto para ser usado para merge com o REDS (ou qualquer outra população miscigenada de interesse)



#### :sparkles: **Admixed data from SABE** :sparkles:

> - Admixed samples: 1,323. São Paulo city of Brazil.



#### :sparkles: **Admixed data from RED-III** :sparkles:

 - Data was extracted from the release [Freeze 10b](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/document.cgi?study_id=phs001569.v1.p1&phd=8693), which is part of the NHLBI Trans-Omics for Precision Medicine (TOPMed) Whole Genome Sequencing Program.TOTAL SAMPLES: 184,878.
 - For the list of TBD studies included in Freeze 10, see “[Table 1. Summary of TOPMed studies in Freeze 10](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/document.cgi?study_id=phs001569.v1.p1&phd=8693#t1).” 
 - Study description: [phs001468](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs001468.v3.p1), study name: Recipient Epidemiology and Donor Evaluation Study-III, sequencing center: Baylor, principal investigator: Brian Custer, Shannon Kelly.
  - Study samples: 2621. Samples in the VCF: 2746. Total samples = 2,748, sequence data = 2621. [Subject Sample Telemetry Report (SSTR)](https://www.ncbi.nlm.nih.gov/gap/sstr/report/phs001468.v3.p1) includes sample id and sex.
  - Study name in the VCF: REDS-III-SCD.
 - [Web link](https://redsivp.com/reds-iii/).
 - [Paper link](https://pmc.ncbi.nlm.nih.gov/articles/PMC4383641/).

> - Admixed samples: 2,634. Populations: various regions of Brazil.



#### :sparkles: **Admixed data from SCD** :sparkles:

 - Data was extracted from the release [Freeze 10b](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/document.cgi?study_id=phs001569.v1.p1&phd=8693), which is part of the NHLBI Trans-Omics for Precision Medicine (TOPMed) Whole Genome Sequencing Program.TOTAL SAMPLES: 184,878.
 - For the list of TBD studies included in Freeze 10, see “[Table 1. Summary of TOPMed studies in Freeze 10](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/document.cgi?study_id=phs001569.v1.p1&phd=8693#t1).” 
 - Study description: [phs001599](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs001599.v1.p1), study name: Boston-Brazil Collaborative Study of Sickle Cell Disease, sequencing center: Baylor, principal investigator: Vijay Sankaran.
  - Study samples: 415. Samples in the VCF: 415. Total samples = 943, sequence data = 387 [Subject Sample Telemetry Report (SSTR)](https://www.ncbi.nlm.nih.gov/gap/sstr/report/phs001599.v1.p1) includes sample id and sex.
  - Study name in the VCF: Bos-Brazil-SCD.
 - [Paper link](https://pubmed.ncbi.nlm.nih.gov/18667698/)


> - Admixed samples: 640. Populations: various regions of Brazil.



#### :sparkles: **Admixed data from 1000 Genome Project** :sparkles:

> - Admixed samples: 883. Populations: Barbados, Colombia, Mexico, Peru, Puerto Rico and USA.



#### :sparkles: **Admixed data from HGPD** :sparkles:

> - Admixed samples: 51. Populations: Colombia, Mexico, and Brazil.



#### :sparkles: **Data toys** :sparkles:
 - [hapmap3 from admixture](https://dalexander.github.io/admixture/download.html)