setwd("E://Rlanguage")
library(dplyr)
library(ggplot2)
library(ggsignif)
library(tidyverse)
library(ggsci)
library(cowplot)

type.list =c("SAMEA7390796","SAMEA7390798","SAMEA7390799","SAMN13676582","SAMN14422843","muscle")
             #,
             #"SAMN09691004","SAMN09691005",
  #"SAMN09691006","SAMN09691007","SAMN09691009","SAMN09691010",
            # "SAMN09691011","SAMN09691012","liver")#,
             #"SAMN15870115","SAMN15870116","SAMN15870117",
             #"SAMN15870118","SAMN15870119","SAMN15870120","adipose")
new_col = c("tad","bin","chr","start","end","porproation")

flie_list<-list.files(path = "E://Rlanguage/function",pattern = glob2rx("splits.porproation.sum.splits.*.raw.50kb.TAD.bed.aver.sad.0.01.bed"),full.names = FALSE)

for(i in type.list){
  file_name= sprintf("E://Rlanguage/function/splits.porproation.sum.splits.%s.raw.50kb.TAD.bed.aver.sad.0.01.bed", i)
  x_name= sprintf("%s_function", i)
  tmp <- read.table(file_name,col.names = new_col)
  tmp$log2FoldChange=log2(tmp$log2FoldChange)
  assign(x_name,tmp)
}
for(i in type.list){
  file_name= sprintf("E://Rlanguage/function/splits.porproation.sum.splits.%s.raw.50kb.TAD.bed.aver.sad.0.01.bed", i)
  x_name= sprintf("%s_function", i)
  assign(x_name,read.table( file_name,col.names = new_col))
}
p_adipose<- ggplot()+
  geom_smooth(data = SAMN09691004_function,aes(x = bin, y=log2FoldChange),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_function,aes(x = bin, y=log2FoldChange),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_function,aes(x = bin, y=log2FoldChange),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_function,aes(x = bin, y=log2FoldChange),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_function,aes(x = bin, y=log2FoldChange),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_function,aes(x = bin, y=log2FoldChange),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_function,aes(x = bin, y=log2FoldChange),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_function,aes(x = bin, y=log2FoldChange),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = adipose_function,aes(x = bin, y=log2FoldChange),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()+
  geom_vline(xintercept = 20,linetype=2)+geom_vline(xintercept = 40,linetype=2)
  
p_liver <- ggplot()+
  geom_smooth(data = SAMN09691006_function,aes(x = bin, y=log2FoldChange),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691007_function,aes(x = bin, y=log2FoldChange),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_function,aes(x = bin, y=log2FoldChange),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_function,aes(x = bin, y=log2FoldChange),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_function,aes(x = bin, y=log2FoldChange),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_function,aes(x = bin, y=log2FoldChange),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = liver_function,aes(x = bin, y=log2FoldChange),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()+
  geom_vline(xintercept = 20,linetype=2)+geom_vline(xintercept = 40,linetype=2)

p_muscle <- ggplot()+
  geom_smooth(data = SAMEA7390796_function,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_function,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_function,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_function,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN14422843_function,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = muscle_function,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()+
  geom_vline(xintercept = 20,linetype=2)+geom_vline(xintercept = 40,linetype=2)
p_adipose <- p_adipose+labs(title = "Adipose")
p_liver <- p_liver+labs(title = "Liver")
p_muscle <- p_muscle+labs(title = "Muscle")
p_adipose/p_liver/p_muscle
#geom_smooth(data = total_function,aes(x = bin, y=log2FoldChange),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()
ggsave("fig3B.function.pdf",last_plot(),"pdf",width = 3,height = 3)
