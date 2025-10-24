
 # Project: Natural selection in the MHC region of human populations

 - All literature is in the [Literature Drive folder](https://drive.google.com/drive/folders/1-vxYakHmMx_JnguiSXql8hGfvvYGoM34?usp=drive_link)
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

### **- Data toys** :sparkles:
 - Backup is in local machine at /home/jenn/genevol/data/data_toys/hapmap3_from_admixture/
 - [hapmap3 from admixture](https://dalexander.github.io/admixture/download.html)

> Reference European samples: 572.
> Reference African samples: 871.
> Reference East Asian samples: 787.
> Other reference samples: 1,168.

### **- Reference data from 1000 Genome Project** :sparkles:

> - European samples: 486. Subpopulations: Spain, Finland, Italy and United Kingdon.
> - African samples: 871. Subpopulations: Gambia, Kenya, Nigeria and Sierra Leone.
> - East Asia samples: 617. Subpopulations: China, Japan and Vietnam.
> - Othe samples: 732. Subpopulations: Pakistan, Bangladesh, Sri Lanka, India and USA.


### **- Reference data from HGDP** :sparkles:

 - [Paper link](https://pmc.ncbi.nlm.nih.gov/articles/PMC7115999/). 930 participants.
 - [Data link](https://ngs.sanger.ac.uk/production/hgdp/hgdp_wgs.20190516/).
 - [Metadata](https://ngs.sanger.ac.uk/production/hgdp/hgdp_wgs.20190516/metadata/), population and super-population informations about all participants (930) is available.
 - Filtered HGDP is available.

> - European samples: 86. Subpopulations: France and Italy.
> - African samples: 88. Subpopulations: South Africa, Senegal, Nigeria, Nambia, Kenya and Congo.
> - East Asia samples: 170. Subpopulations: China, Japan and Cambodia.

```
# metadata (930 samples)
/home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp_wgs.20190516.metadata.txt

# filtered data (930 samples)
/home/DATA/HGDP_vcf/hgdp3.0_filter/hgdp_wgs.20190516.full.chr*_filter.vcf.gz


# sample list (543 filtered sample ids)
$ cat /home/DATA/HGDP_vcf/HGDP_parental/ALL_POP.txt | wc -l
```
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


### **- Admixed data from SABE** :sparkles:

> - Admixed samples: 1,323. São Paulo city of Brazil.


### **- Admixed data from RED-III** :sparkles:

 - [Web link](https://redsivp.com/reds-iii/).
 - [Paper link](https://pmc.ncbi.nlm.nih.gov/articles/PMC4383641/).
 - Data was extracted from the release [Freeze 10b](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/document.cgi?study_id=phs001569.v1.p1&phd=8693), which is part of the NHLBI Trans-Omics for Precision Medicine (TOPMed) Whole Genome Sequencing Program.
 - Study description: [phs001468](https://www.ncbi.nlm.nih.gov/projects/gap/cgi-bin/study.cgi?study_id=phs001468.v3.p1)
 - Number of samples: 2,795. [Subject Sample Telemetry Report (SSTR)](https://www.ncbi.nlm.nih.gov/gap/sstr/report/phs001468.v3.p1) includes sample id and sex.

> - Admixed samples: 2,635. Populations: various regions of Brazil.

```
# metadata ()
```


### **- Admixed data from SCD** :sparkles:

> - Admixed samples: 640. Populations: various regions of Brazil.


### **- Admixed data from 1000 Genome Project** :sparkles:

> - Admixed samples: 883. Populations: Barbados, Colombia, Mexico, Peru, Puerto Rico and USA.


### **- Admixed data from HGPD** :sparkles:

> - Admixed samples: 51. Populations: Colombia, Mexico, and Brazil.