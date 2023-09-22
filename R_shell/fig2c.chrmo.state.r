setwd("E://Rlanguage")
library(dplyr)
library(ggplot2)
library(ggsignif)
library(tidyverse)
library(ggsci)
library(cowplot)

type.list =c("SAMEA7390796","SAMEA7390798","SAMEA7390799","SAMN09691004",
             "SAMN09691005","SAMN09691006","SAMN09691007","SAMN09691009","SAMN09691010","SAMN09691011","SAMN09691012","SAMN13676582",
             "SAMN14422843","SAMN15870115","SAMN15870116","SAMN15870117","SAMN15870118","SAMN15870119","SAMN15870120","total")
region_list <- c("ATAC_Is","enhancers","promoters","quiescent","repressed","TSS_proximal")
new_col = c("tad","bin","chr","start","end","porproation")

flie_ATAC_Is_list<-list.files(path = "E://Rlanguage/chromatin_states",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.ATAC_Is_segments.flitered.bed"),full.names = FALSE)
flie_enhancers_list<-list.files(path = "E://Rlanguage/chromatin_states",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.enhancers_segments.flitered.bed"),full.names = FALSE)
flie_promoters_list<-list.files(path = "E://Rlanguage/chromatin_states",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.promoters_segments.flitered.bed"),full.names = FALSE)
file_quiescent_list<-list.files(path = "E://Rlanguage/chromatin_states",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.quiescent_segments.flitered.bed"),full.names = FALSE)
file_repressed_list<-list.files(path = "E://Rlanguage/chromatin_states",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.repressed_segments.flitered.bed"),full.names = FALSE)
file_TSS_proximal_list<-list.files(path = "E://Rlanguage/chromatin_states",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.TSS_proximal_segments.flitered.bed"),full.names = FALSE)
for(i in type.list){
  file_name= sprintf("E://Rlanguage/chromatin_states/splits.porproation.sum.%s.raw.50kb.TAD.ATAC_Is_segments.flitered.bed", i)
  x_name= sprintf("%s_ATAC_Is", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}

for(i in type.list){
  file_name= sprintf("E://Rlanguage/chromatin_states/splits.porproation.sum.%s.raw.50kb.TAD.enhancers_segments.flitered.bed", i)
  x_name= sprintf("%s_enhancers", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
for(i in type.list){
  file_name= sprintf("E://Rlanguage/chromatin_states/splits.porproation.sum.%s.raw.50kb.TAD.promoters_segments.flitered.bed", i)
  x_name= sprintf("%s_promoters", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
for(i in type.list){
  file_name= sprintf("E://Rlanguage/chromatin_states/splits.porproation.sum.%s.raw.50kb.TAD.quiescent_segments.flitered.bed", i)
  x_name= sprintf("%s_quiescent", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
for(i in type.list){
  file_name= sprintf("E://Rlanguage/chromatin_states/splits.porproation.sum.%s.raw.50kb.TAD.repressed_segments.flitered.bed", i)
  x_name= sprintf("%s_repressed", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
for(i in type.list){
  file_name= sprintf("E://Rlanguage/chromatin_states/splits.porproation.sum.%s.raw.50kb.TAD.TSS_proximal_segments.flitered.bed", i)
  x_name= sprintf("%s_TSS_proximal", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}

total_enhancers$porproation = total_enhancers$porproation/3
total_promoters$porproation = total_promoters$porproation/3
total_repressed$porproation = total_repressed$porproation/3
total_quiescent$porproation = total_quiescent$porproation/3
total_TSS_proximal$porproation = total_TSS_proximal$porproation/3


#ATAC_Is <- ggplot()+
  #geom_smooth(data = SAMN09691006_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691007_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691009_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691010_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691011_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691012_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMEA7390796_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMEA7390798_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMEA7390799_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN13676582_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN14422843_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691004_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691005_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN15870115_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN15870116_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN15870117_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN15870118_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN15870119_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN15870120_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  #geom_smooth(data = total_ATAC_Is,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()

enhancers <- ggplot()+
  geom_smooth(data = SAMN09691006_enhancers,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691007_enhancers,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_enhancers,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_enhancers,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_enhancers,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_enhancers,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390796_enhancers,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_enhancers,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_enhancers,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_enhancers,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN14422843_enhancers,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691004_enhancers,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_enhancers,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_enhancers,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_enhancers,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_enhancers,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_enhancers,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_enhancers,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_enhancers,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = total_enhancers,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()

promoters <- ggplot()+
  geom_smooth(data = SAMN09691006_promoters,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691007_promoters,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_promoters,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_promoters,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_promoters,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_promoters,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390796_promoters,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_promoters,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_promoters,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_promoters,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN14422843_promoters,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691004_promoters,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_promoters,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_promoters,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_promoters,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_promoters,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_promoters,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_promoters,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_promoters,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = total_promoters,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()

quiescent <- ggplot()+
  geom_smooth(data = SAMN09691006_quiescent,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691007_quiescent,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_quiescent,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_quiescent,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_quiescent,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_quiescent,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390796_quiescent,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_quiescent,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_quiescent,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_quiescent,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN14422843_quiescent,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691004_quiescent,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_quiescent,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_quiescent,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_quiescent,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_quiescent,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_quiescent,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_quiescent,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_quiescent,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = total_quiescent,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()

repressed <- ggplot()+
  geom_smooth(data = SAMN09691006_repressed,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691007_repressed,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_repressed,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_repressed,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_repressed,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_repressed,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390796_repressed,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_repressed,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_repressed,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_repressed,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN14422843_repressed,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691004_repressed,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_repressed,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_repressed,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_repressed,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_repressed,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_repressed,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_repressed,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_repressed,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = total_repressed,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()

TSS_proximal <- ggplot()+
  geom_smooth(data = SAMN09691006_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691007_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390796_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN14422843_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691004_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = total_TSS_proximal,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()
library(patchwork)
p1 <- (enhancers/promoters/repressed)
p2 <- quiescent/TSS_proximal
p<- p1+p2
p
p <- plot_grid(enhancers, promoters,repressed,quiescent,TSS_proximal, labels = c("enhancers", "promoters",
                                                                                          "repressed","quiescent","TSS_proximal"), nrow = 5)   
ggsave("fig3B.chrmo.state.enhancer.pdf",enhancers,"pdf",width = 4,height = 1)
ggsave("fig3B.chrmo.state2.pdf",p2,"pdf",width = 3,height = 3)
#ggsave("fig3B.chrmo.state.pdf",p1,"pdf",width = 4,height = 4)  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
p1

