setwd("E://Rlanguage")
library(dplyr)
library(ggplot2)
library(ggsignif)
library(tidyverse)
library(ggsci)
library(cowplot)
type.list =c("SAMEA7390796","SAMEA7390798","SAMEA7390799","SAMN09690999","SAMN09691000","SAMN09691001","SAMN09691002","SAMN09691004",
             "SAMN09691005","SAMN09691006","SAMN09691007","SAMN09691009","SAMN09691010","SAMN09691011","SAMN09691012","SAMN13676582",
             "SAMN14422843","SAMN15398106","SAMN15870115","SAMN15870116","SAMN15870117","SAMN15870118","SAMN15870119","SAMN15870120","total")
region_list <- c("splice_acceptor","splice_donor","start_lost","stop_gained","stop_lost")
new_col = c("tad","bin","chr","start","end","porproation")
flie_splice_acceptor_list<-list.files(path = "E://Rlanguage/LOF",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.bed.splice_acceptor.final_lof.frq.bed"),full.names = FALSE)
flie_splice_donor_list<-list.files(path = "E://Rlanguage/LOF",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.bed.splice_donor.final_lof.frq.bed"),full.names = FALSE)
flie_start_lost_list<-list.files(path = "E://Rlanguage/LOF",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.bed.start_lost.final_lof.frq.bed"),full.names = FALSE)
file_stop_gained_list<-list.files(path = "E://Rlanguage/LOF",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.bed.stop_gained.final_lof.frq.bed"),full.names = FALSE)
file_stop_lost_list<-list.files(path = "E://Rlanguage/LOF",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.bed.stop_lost.final_lof.frq.bed"),full.names = FALSE)
for(i in type.list){
  file_name= sprintf("E://Rlanguage/LOF/splits.porproation.sum.%s.raw.50kb.TAD.bed.splice_acceptor.final_lof.frq.bed", i)
  x_name= sprintf("%s_splice_acceptor", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
for(i in type.list){
  file_name= sprintf("E://Rlanguage/LOF/splits.porproation.sum.%s.raw.50kb.TAD.bed.splice_donor.final_lof.frq.bed", i)
  x_name= sprintf("%s_splice_donor", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
for(i in type.list){
  file_name= sprintf("E://Rlanguage/LOF/splits.porproation.sum.%s.raw.50kb.TAD.bed.start_lost.final_lof.frq.bed", i)
  x_name= sprintf("%s_start_lost", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
for(i in type.list){
  file_name= sprintf("E://Rlanguage/LOF/splits.porproation.sum.%s.raw.50kb.TAD.bed.stop_gained.final_lof.frq.bed", i)
  x_name= sprintf("%s_stop_gained", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
for(i in type.list){
  file_name= sprintf("E://Rlanguage/LOF/splits.porproation.sum.%s.raw.50kb.TAD.bed.stop_lost.final_lof.frq.bed", i)
  x_name= sprintf("%s_stop_lost", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}

splice_acceptor <- ggplot()+
  geom_smooth(data = SAMEA7390796_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN14422843_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691006_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691007_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691004_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  theme_classic()+geom_smooth(data = total_splice_acceptor,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+
  geom_vline(xintercept = 20,linetype=2)+geom_vline(xintercept = 40,linetype=2)

splice_donor <- ggplot()+
  geom_smooth(data = SAMEA7390796_splice_donor,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_splice_donor,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_splice_donor,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_splice_donor,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN14422843_splice_donor,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691006_splice_donor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691007_splice_donor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_splice_donor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_splice_donor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_splice_donor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_splice_donor,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691004_splice_donor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_splice_donor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_splice_donor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_splice_donor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_splice_donor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_splice_donor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_splice_donor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_splice_donor,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = total_splice_donor,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()+
  geom_vline(xintercept = 20,linetype=2)+geom_vline(xintercept = 40,linetype=2)

start_lost <- ggplot()+
  geom_smooth(data = SAMEA7390796_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN14422843_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691006_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691007_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691004_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = total_start_lost,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()+
  geom_vline(xintercept = 20,linetype=2)+geom_vline(xintercept = 40,linetype=2)
stop_gained <- ggplot()+
  geom_smooth(data = SAMEA7390796_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN14422843_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691006_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691007_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691004_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = total_start_lost,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()+
  geom_vline(xintercept = 20,linetype=2)+geom_vline(xintercept = 40,linetype=2)

stop_lost <- ggplot()+
  geom_smooth(data = SAMEA7390796_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN14422843_start_lost,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691006_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  #geom_smooth(data = SAMN09691007_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_start_lost,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691004_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_start_lost,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = total_start_lost,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()+
  geom_vline(xintercept = 20,linetype=2)+geom_vline(xintercept = 40,linetype=2)
library(patchwork)
p1 <- (splice_acceptor/splice_donor/start_lost)
p2 <- (start_lost/stop_gained/stop_lost)
p <- plot_grid(splice_acceptor,splice_donor,start_lost,stop_gained,stop_lost,
               labels = c("splice_acceptor","splice_donor","start_lost","stop_gained","stop_lost"), nrow = 5)
ggsave("fig3.LOF2.line.pdf",p2,"pdf",width = 3,height = 3)
ggsave("fig3.LOF.line.pdf",p,"pdf",width = 4,height = 6)
