library(reshape)
setwd("E://Rlanguage")
library(ggplot2)
library(ggsignif)
library(tidyverse)
library(ggsci)
library(cowplot)
library(patchwork)

type.list =c("SAMEA7390796","SAMEA7390798","SAMEA7390799","SAMN09691004",
             "SAMN09691005","SAMN09691006","SAMN09691007","SAMN09691009","SAMN09691010","SAMN09691011","SAMN09691012","SAMN13676582",
             "SAMN14422843","SAMN15870115","SAMN15870116","SAMN15870117","SAMN15870118","SAMN15870119","SAMN15870120","total")
region_list <- c("eqtl","sqtl")
new_col = c("tad","bin","chr","start","end","porproation")
flie_eQTL_list<-list.files(path = "E://Rlanguage/QTL",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.bed.3tissue.cis_eqtl_true.bed"),full.names = FALSE)
flie_sQTL_list<-list.files(path = "E://Rlanguage/QTL",pattern = glob2rx("splits.porproation.sum.*.raw.50kb.TAD.bed.3tissue.cis_sqtl_true.bed"),full.names = FALSE)

for(i in type.list){
  file_name= sprintf("E://Rlanguage/QTL/splits.porproation.sum.%s.raw.50kb.TAD.bed.3tissue.cis_eqtl_true.bed", i)
  x_name= sprintf("%s_eqtl", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
for(i in type.list){
  file_name= sprintf("E://Rlanguage/QTL/splits.porproation.sum.%s.raw.50kb.TAD.bed.3tissue.cis_sqtl_true.bed", i)
  x_name= sprintf("%s_sqtl", i)
  assign(x_name,  read.table( file_name,col.names = new_col) )
}
head(total_eqtl)
eqtl <- ggplot()+
  geom_smooth(data = SAMEA7390796_eqtl,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390798_eqtl,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMEA7390799_eqtl,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN13676582_eqtl,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN14422843_eqtl,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691006_eqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691007_eqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691009_eqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691010_eqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691011_eqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691012_eqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691004_eqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN09691005_eqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870115_eqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870116_eqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870117_eqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870118_eqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870119_eqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = SAMN15870120_eqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+
  geom_smooth(data = total_eqtl,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+theme_classic()+
  geom_vline(xintercept = 20,linetype=2)+geom_vline(xintercept = 40,linetype=2)
eqtl <- eqtl+facet_grid(bin~porproation)+theme(strip.text.x = element_text(colour = "white", face = "bold"))
sqtl <- ggplot()+
  geom_smooth(data = SAMEA7390796_sqtl,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMEA7390798_sqtl,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMEA7390799_sqtl,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN13676582_sqtl,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN14422843_sqtl,aes(x = bin, y=porproation),method="gam",color="#aaa26f",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN09691006_sqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN09691007_sqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN09691009_sqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN09691010_sqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN09691011_sqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN09691012_sqtl,aes(x = bin, y=porproation),method="gam",color="#db520f",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN09691004_sqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN09691005_sqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN15870115_sqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN15870116_sqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN15870117_sqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN15870118_sqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN15870119_sqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = SAMN15870120_sqtl,aes(x = bin, y=porproation),method="gam",color="#f3d32c",se=FALSE,size=0.7)+#linetype="dashed")+
  geom_smooth(data = total_sqtl,aes(x = bin, y=porproation),method="gam",color="#0c1707FF",se=FALSE,size=2)+#linetype="dashed")+
  theme_classic()+geom_vline(xintercept = 20,linetype=2)+geom_vline(xintercept = 40,linetype=2)
eqtl<- eqtl+labs(title = "eQTLs")
sqtl <- sqtl+labs(title = "sQTLs")
eqtl/sqtl
ggsave("Fig3A.QTL.splitTAD.pdf", last_plot(), "pdf", width = 3,height = 3)
mtcars2 <- within(mtcars, {   
  vs <- factor(vs, labels = c("V-shaped", "Straight"))   
  am <- factor(am, labels = c("Automatic", "Manual"))   
  cyl  <- factor(cyl)   
  gear <- factor(gear)})
p1 <- ggplot(mtcars2) +   
  geom_point(aes(x = wt, y = mpg, colour = gear)) +   
  labs(title = "Fuel economy declines as weight increases",        
       subtitle = "(1973-74)",        
       caption = "Data from the 1974 Motor Trend US magazine.",        
       tag = "Figure 1",        x = "Weight (1000 lbs)",        
       y = "Fuel economy (mpg)",        
       colour = "Gears")
p1+facet_grid(vs ~ am)
eqtl+facet_grid(vs ~ am)
# <- read.csv("eQTL.SNP.porproation.splits.adipose.trible.TAD_50000_blocks.eQTL.count.bed",sep = "\t",header=F)
#head(data)
#colnames(data)=c("variable","chr","start","end","Score")
#ggplot(data=data.muscle.e, aes(x=variable, y=eQTL.SNP.proporition))+geom_smooth(method = "gam",alpha=0.4) + theme_classic()+geom_vline(xintercept = 2000,linetype=2)+
#  geom_vline(xintercept = 6000,linetype=2)





  #geom_rect(xmin = 0, xmax = 5, ymin = 0, ymax = Inf,color= "blue", 
  #          fill = "grey90", size = 0.5,alpha = 0.1) + 
  #geom_rect(xmin = 95, xmax = 100, ymin = 0, ymax = Inf,color= "blue", 
  #          fill = "grey90", size = 0.5,alpha = 0.1) + 
  #geom_bar(fill="grey10",stat='identity',alpha = 0.1,size=0.02)+
  #ggalt::geom_xspline(alpha=0.9)+
  stat_smooth(method = "loess", se = FALSE,size=1) +
  #geom_smooth(se=FALSE, linetype="dashed", size=0.5) +
  scale_x_continuous(breaks=seq(0,100,25),labels=seq(0,100,25))+
  xlab("Relative physical position on chromosome (%)")+
  ylab("Mutation sites") +
  theme_classic() + scale_fill_startrek()
  

  
########phasecons#####
conserve.human <- read.csv("splits.sum.total.conserve.trible.TAD.liftover.human.mean.phastCons100way.tsv",sep="\t",header = F)
head(conserve.human)
conserve.mouse <- read.csv("splits.sum.total.conserve.trible.TAD.liftover.mouse.mean.phastCons100way.bed",sep="\t",header = F)
colnames(conserve.human)=c("variable","chr","start","end","length","totalscore","mean")
colnames(conserve.mouse)=c("variable","chr","start","end","length","totalscore","mean")
ggplot()+
  geom_smooth(data = conserve.human,aes(x = variable, y=mean),method="gam",color="#1c9a35",se=FALSE,size=0.7)+
  geom_smooth(data = conserve.mouse,aes(x = variable, y=mean),method="gam",color="#1c9a35",se=FALSE,size=0.7,linetype="dashed")+theme_classic()+geom_vline(xintercept = 9000,linetype=2)+geom_vline(xintercept = 18000,linetype=2)
ggsave("fig3b.conserve.phasecons.2spcies.pdf",last_plot(),"pdf",width = 3,height = 3)
