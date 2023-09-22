setwd("E:\\Rlanguage")
library(dplyr)
library(ggplot2)
library(ggsignif)
library(tidyverse)
library(ggsci)
library(cowplot)

sample.list =c("SAMEA7390796","SAMEA7390798","SAMEA7390799","SAMN09690999","SAMN09691000","SAMN09691001","SAMN09691002","SAMN09691004",
               "SAMN09691005","SAMN09691006","SAMN09691007","SAMN09691009","SAMN09691010","SAMN09691011","SAMN09691012","SAMN13676582",
               "SAMN14422843","SAMN15398106","SAMN15870115","SAMN15870116","SAMN15870117","SAMN15870118","SAMN15870119","SAMN15870120","total")
type.list =c("M_ADG","M_BFT","M_DAYS","M_BW","M_LMA","M_LMDEP")
new_col =c("tad","bin","chr","start","end","porproation")
flie_ADG_list<-list.files(path = "GWAS/",pattern = glob2rx("proportion.splits.*.raw.50kb.TAD.bed.M_ADG.bed"),full.names = FALSE)
flie_BFT_list<-list.files(path = "GWAS/",pattern = glob2rx("proportion.splits.*.raw.50kb.TAD.bed.M_BFT.bed"),full.names = FALSE)
flie_DAYS_list<-list.files(path = "GWAS/",pattern = glob2rx("proportion.splits.*.raw.50kb.TAD.bed.M_DAYS.bed"),full.names = FALSE)
file_LEANCUTP_list<-list.files(path = "GWAS/",pattern = glob2rx("proportion.splits.*.raw.50kb.TAD.bed.M_LEANCUTP.bed"),full.names = FALSE)
file_LMA_list<-list.files(path = "GWAS/",pattern = glob2rx("proportion.splits.*.raw.50kb.TAD.bed.M_LMA.bed"),full.names = FALSE)
file_BW_list<-list.files(path = "GWAS/",pattern = glob2rx("proportion.splits.*.raw.50kb.TAD.bed.M_BW.bed"),full.names = FALSE)


for(i in sample.list){
  file_name= sprintf("GWAS/proportion.splits.%s.raw.50kb.TAD.bed.M_ADG.bed", i)
  x_name= sprintf("%s_ADG", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}

for(i in sample.list){
  file_name= sprintf("GWAS/proportion.splits.%s.raw.50kb.TAD.bed.M_DAYS.bed", i)
  x_name= sprintf("%s_DAYS", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}


for(i in sample.list){
  file_name= sprintf("GWAS/proportion.splits.%s.raw.50kb.TAD.bed.M_LMA.bed", i)
  x_name= sprintf("%s_LMA", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}

for(i in sample.list){
  file_name= sprintf("GWAS/proportion.splits.%s.raw.50kb.TAD.bed.M_BFT.bed", i)
  x_name= sprintf("%s_BFT", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}

for(i in sample.list){
  file_name= sprintf("GWAS/proportion.splits.%s.raw.50kb.TAD.bed.M_LMDEP.bed", i)
  x_name= sprintf("%s_LMDEP", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
for(i in sample.list){
  file_name= sprintf("GWAS/proportion.splits.%s.raw.50kb.TAD.bed.M_BW.bed", i)
  x_name= sprintf("%s_BW", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
ADG <- ggplot()+
  geom_smooth(data = SAMEA7390796_ADG,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390798_ADG,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390799_ADG,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09690999_ADG,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691000_ADG,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691001_ADG,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691002_ADG,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN13676582_ADG,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15398106_ADG,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN14422843_ADG,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691006_ADG,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691007_ADG,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691009_ADG,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691010_ADG,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691011_ADG,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691012_ADG,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691004_ADG,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691005_ADG,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870115_ADG,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870116_ADG,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870117_ADG,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870118_ADG,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870119_ADG,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870120_ADG,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = total_ADG,aes(x = bin, y=porproation),method="loess",color="#0c1707FF",se=FALSE,linewidth=2)

BFT <- ggplot()+
  geom_smooth(data = total_BFT,aes(x = bin, y=porproation),method="loess",color="#0c1707FF",se=FALSE,linewidth=2)+
  geom_smooth(data = SAMEA7390796_BFT,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390798_BFT,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390799_BFT,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09690999_BFT,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691000_BFT,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691001_BFT,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691002_BFT,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN13676582_BFT,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15398106_BFT,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN14422843_BFT,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691006_BFT,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691007_BFT,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691009_BFT,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691010_BFT,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691011_BFT,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691012_BFT,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691004_BFT,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691005_BFT,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870115_BFT,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870116_BFT,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870117_BFT,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870118_BFT,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870119_BFT,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870120_BFT,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  theme_classic()


DAYS <- ggplot()+  
  geom_smooth(data = total_DAYS,aes(x = bin, y=porproation),method="loess",color="#0c1707FF",se=FALSE,linewidth=2)+
  geom_smooth(data = SAMEA7390796_DAYS,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390798_DAYS,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390799_DAYS,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09690999_DAYS,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691000_DAYS,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691001_DAYS,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691002_DAYS,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN13676582_DAYS,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15398106_DAYS,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN14422843_DAYS,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691006_DAYS,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691007_DAYS,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691009_DAYS,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691010_DAYS,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691011_DAYS,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691012_DAYS,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691004_DAYS,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691005_DAYS,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870115_DAYS,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870116_DAYS,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870117_DAYS,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870118_DAYS,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870119_DAYS,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870120_DAYS,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)#+theme_classic()


LMA <- ggplot()+ 
  geom_smooth(data = total_LMA,aes(x = bin, y=porproation),method="loess",color="#0c1707FF",se=FALSE,linewidth=2)+
  geom_smooth(data = SAMEA7390796_LMA,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390798_LMA,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390799_LMA,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09690999_LMA,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691000_LMA,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691001_LMA,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691002_LMA,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN13676582_LMA,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15398106_LMA,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN14422843_LMA,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691006_LMA,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691007_LMA,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691009_LMA,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691010_LMA,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691011_LMA,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691012_LMA,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691004_LMA,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691005_LMA,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870115_LMA,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870116_LMA,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870117_LMA,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870118_LMA,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870119_LMA,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870120_LMA,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)#+theme_classic()

LMDEP <- ggplot()+  
  geom_smooth(data = total_LMDEP,aes(x = bin, y=porproation),method="loess",color="#0c1707FF",se=FALSE,linewidth=2)+
  geom_smooth(data = SAMEA7390796_LMDEP,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390798_LMDEP,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390799_LMDEP,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09690999_LMDEP,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691000_LMDEP,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691001_LMDEP,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691002_LMDEP,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN13676582_LMDEP,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15398106_LMDEP,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN14422843_LMDEP,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691006_LMDEP,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691007_LMDEP,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691009_LMDEP,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691010_LMDEP,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691011_LMDEP,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691012_LMDEP,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691004_LMDEP,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691005_LMDEP,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870115_LMDEP,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870116_LMDEP,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870117_LMDEP,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870118_LMDEP,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870119_LMDEP,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870120_LMDEP,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)
#+theme_classic()

BW <- ggplot()+
  geom_smooth(data = SAMEA7390796_BW,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390798_BW,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMEA7390799_BW,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09690999_BW,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691000_BW,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691001_BW,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691002_BW,aes(x = bin, y=porproation),method="loess",color="#1c9a35",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN13676582_BW,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15398106_BW,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN14422843_BW,aes(x = bin, y=porproation),method="loess",color="#aaa26f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691006_BW,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691007_BW,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691009_BW,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691010_BW,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691011_BW,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691012_BW,aes(x = bin, y=porproation),method="loess",color="#db520f",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691004_BW,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN09691005_BW,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870115_BW,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870116_BW,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870117_BW,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870118_BW,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870119_BW,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = SAMN15870120_BW,aes(x = bin, y=porproation),method="loess",color="#f3d32c",se=FALSE,linewidth=0.7)+
  geom_smooth(data = total_BW,aes(x = bin, y=porproation),method="loess",color="#0c1707FF",se=FALSE,linewidth=2)
library(patchwork)
p1 <- (ADG/BFT/DAYS)
p2 <- (LMA/BW/LMDEP)
p<- p1+p2
p

#p <- plot_grid(ADG,BFT,DAYS,LMA,BW,LMDEP,
               labels = c("ADG","BFT","DAYS","LMA","BW","LMDEP"), nrow = 6 )

ggsave("fig3B.3.GWAS.pdf",p,"pdf",width = 3,height = 12)


