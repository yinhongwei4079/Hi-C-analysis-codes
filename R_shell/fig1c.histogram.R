library(ggplot2)
library(gcookbook)
library(readr)
####depth??????###########
data <- read.csv('G:\\AGIS_zhaoqianyi\\result\\juicer.TAD.result.csv',header = T)
head(data)
p <- ggplot(data=data,aes(x=deepth))+geom_histogram(data=data,aes(x=deepth,..density..),bins = 30,fill="grey",color="white",size=0.2, alpha=0.6)+
  theme_classic()
p
ggsave("E://Rlanguage//depth_hist.pdf",plot = p, width = 4, height = 4, dpi = 150, units = "in", device='pdf')
#####################################
df = read.csv("E:\\Rlanguage\\final.flitered.juicer_public_results.csv",header = T)
dfhead(df)
setwd("E://Rlanguage")
ggplot(data=df,aes(x=deepth))+geom_histogram(data=df,aes(x=deepth,..count..),breaks=seq(50,150,20),fill="seagreen",color="white",size=0.2, alpha=0.6)+
  theme_classic()+scale_x_continuous(expand = c(0, 0),breaks = seq(50, 150, 20))+scale_y_continuous(expand = c(0, 0),breaks = seq(0, 15, 5))
ggplot(data=df,aes(x=deepth))+geom_histogram(data=df,aes(x=deepth,..density..),breaks=seq(50,150,20),fill="seagreen",color="white",size=0.2, alpha=0.6)+
  theme_classic()+scale_x_continuous(expand = c(0, 0),breaks = seq(50, 150, 20))+scale_y_continuous(expand = c(0, 0))+
  geom_density(data=df,aes(x=deepth,..density..),colour="white",size=0.4,alpha=.2, fill="darkseagreen3")
  
###################################################################################################
ggplot(data=df,aes(x=TAD.number))+geom_histogram(data=df,aes(x=TAD.number,..density..),breaks=seq(875,1100,25),fill="seagreen",  color="white",size=0.2, alpha=0.6)+
  theme_classic()+scale_x_continuous(expand = c(0, 0),breaks = seq(875,1100,25))+scale_y_continuous(expand = c(0, 0))+
  geom_density(data=df,aes(x=TAD.number,..density..),colour="white",size=0.4,alpha=.2, fill="darkseagreen3")
ggplot(data=df,aes(x=TAD.number))+geom_histogram(data=df,aes(x=TAD.number,..count..),breaks=seq(875,1100,25),fill="seagreen",color="white",size=0.2, alpha=0.6)+
  theme_classic()+scale_x_continuous(expand = c(0, 0),breaks = seq(875, 1100, 25))+scale_y_continuous(expand = c(0, 0),breaks = seq(0, 5, 1))
######################################

p <- ggplot()+geom_histogram(data=df,aes(x=TADcoverage,y=..count..),stat ="bin",bins= 14,breaks=seq(0.65,0.7875,0.0125),fill="seagreen",color="white",size=0.2, alpha=0.6)+
  theme_classic()+scale_x_continuous(expand = c(0, 0),breaks = seq(0.65,0.7875,0.0125))+
  geom_density(data=df,aes(x=TADcoverage,..scaled..*6),colour="white",size=0.4,alpha=.2, fill="darkseagreen3")+
  theme(axis.text.x = element_text(angle = 45,hjust=1),)+
  geom_vline(data=df,aes(xintercept=mean(TADcoverage)),color="blue", linetype="dashed", size=1)+
  scale_y_continuous(sec.axis=sec_axis(~./6,
                                       name = "Density",breaks=seq(0,1,0.2)),
                     )
                     #secexpand = c(0, 0),breaks = seq(0, 8, 1))
  
ggplot()+geom_histogram(data=df,aes(x=TADcoverage,y=..density..),stat ="bin",bins= 14,breaks=seq(0.65,0.7875,0.0125),fill="seagreen",color="white",size=0.2, alpha=0.6)+
  theme_classic()+scale_x_continuous(expand = c(0, 0),breaks = seq(0.65,0.7875,0.0125))+
  geom_density(data=df,aes(x=TADcoverage),colour="white",size=0.4,alpha=.2, fill="darkseagreen3")+
  theme(axis.text.x = element_text(angle = 45,hjust=1),) 

 
ggsave("E://Rlanguage//cover_hist.pdf",plot = p, width = 4, height = 3, dpi = 150, units = "in", device='pdf')
p
dev.off()
##############################################
ggplot(data=df,aes(x=TAD.maxlength))+geom_histogram(data=df,aes(x=TAD.maxlength,..count..),
                                                    breaks=seq(22.4,24.5,0.25),fill="seagreen",color="white",size=0.2, alpha=0.6)+
  theme_classic()+scale_x_continuous(expand = c(0, 0),breaks = seq(22.4,24.5,0.25))+scale_y_continuous(expand = c(0, 0))+
  geom_density(data=df,aes(x=TAD.maxlength,..density..),colour="white",size=0.4,alpha=.2, fill="darkseagreen3")
ggplot(data=df,aes(x=TAD.maxlength))+geom_histogram(data=df,aes(x=TAD.maxlength,..count..),breaks=seq(22.4,24.5,0.25),
                                                    fill="seagreen",color="white",size=0.2, alpha=0.6)+
  theme_classic()+scale_x_continuous(expand = c(0, 0),breaks = seq(22.4,24.5,0.25))+scale_y_continuous(expand = c(0, 0),breaks = seq(0, 15, 1))






df = read.csv("E:\\Rlanguage\\TAD.result.part.csv",header = T)
head(df)

colors("")


setwd("E://Rlanguage")
ggplot(data=df,aes(x=number))+geom_histogram(data=df,aes(x=number,..density..),binwidth=35,breaks=seq(0,1200,50),fill="springgreen4",  color="white",size=0.2, alpha=0.7)+
  geom_density(size=0.4,alpha=.2, fill="#FF6666")+scale_x_continuous(expand = c(0, 0),limits = c(0,1200), breaks = seq(0,1200,50))+
  scale_y_continuous(expand = c(0, 0),limits = c(0,0.005), breaks = seq(0,0.005,0.001))+
  geom_vline(aes(xintercept=mean(number, na.rm=T)),color="red", linetype="dashed", size=1)+theme_classic()+
  theme(axis.text= element_text(angle=35))
  

ggplot(data=df,aes(x=coverage))+geom_histogram(data=df,aes(x=coverage,..density..),binwidth=0.1,breaks=seq(0,1,0.1),fill="springgreen4",  color="white",size=0.2, alpha=0.7)+
  geom_density(size=0.4,alpha=.2, fill="#FF6666")+scale_x_continuous(expand = c(0, 0),limits = c(0,1), breaks = seq(0,1,0.1))+
  scale_y_continuous(expand = c(0, 0),limits = c(0,2.5))+geom_vline(aes(xintercept=mean(coverage, na.rm=T)),color="red", linetype="dashed", size=1)+theme_classic()+
  theme(axis.text= element_text(angle=35))


ggplot(data=df,aes(x=max.length))+geom_histogram(data=df,aes(x=max.length,..density..),binwidth=0.15,fill="springgreen4",  color="white",size=0.2, alpha=0.7)+
  geom_density(size=0.4,alpha=.2, fill="#FF6666")+geom_vline(aes(xintercept=mean(max.length, na.rm=T)),color="red", linetype="dashed", size=1)+theme_classic()+
  theme(axis.text= element_text(angle=35))


ggplot(data=df,aes(x=average.length))+geom_histogram(data=df,aes(x=average.length,..density..),binwidth=0.1,fill="springgreen4",  color="white",size=0.2, alpha=0.7)+
  geom_density(size=0.4,alpha=.2, fill="#FF6666")+geom_vline(aes(xintercept=mean(average.length, na.rm=T)),color="red", linetype="dashed", size=1)+theme_classic()+
  theme(axis.text= element_text(angle=35))+theme_classic()
ggsave("E://Rlanguage//depth.hiccontacts.pdf",plot = p, width = 4, height = 3, dpi = 150, units = "in", device='pdf')
                                               