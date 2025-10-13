
 # Project: Natural selection in the MHC region of human populations

 - All literature is in the [Literature Drive folder](https://drive.google.com/drive/folders/1-vxYakHmMx_JnguiSXql8hGfvvYGoM34?usp=drive_link)
 - All data is in the HPC.



## Tools
- [admixture](https://dalexander.github.io/admixture/download.html)



## Data

### **- Data toys** :sparkles:
 - Backup is in local machine at /home/jenn/genevol/data/data_toys/hapmap3_from_admixture/
 - [hapmap3 from admixture](https://dalexander.github.io/admixture/download.html)


### **- Reference data HGDP** :sparkles:

 - [Paper link](https://pmc.ncbi.nlm.nih.gov/articles/PMC7115999/).
 - [Data link](https://ngs.sanger.ac.uk/production/hgdp/hgdp_wgs.20190516/).
 - [Metadata](https://ngs.sanger.ac.uk/production/hgdp/hgdp_wgs.20190516/metadata/), population and super-population informations about all participants (930) is available.
 - Filtered HGDP is available.
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


### **- Reference data 1KGP** :sparkles:

 - [Paper link]().
 - [Data link]().
 - [Metadata]().
```
# metadata ()
```