library(ggplot2)
library(reshape2)
library(ggrepel)
library(dplyr)
library(ggpmisc)
setwd("E://Rlanguage")
#data<-read.csv("D://wzs//3-11-E1-AU(1).csv",sep=",")
#data
#tissue<-data$X
#tissue
#p<-ggplot(data,aes(x=ASW,y=EUW))+geom_point(shape=19,size=3,color="red")+xlab("Asian")+ylab("European")+
  geom_smooth(method = lm,formula = y ~ x)+geom_text(aes(label=tissue),size=8)
p+theme_bw()+theme(axis.text.x = element_text(size=30),axis.text.y = element_text(size=30))+ 
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+theme(legend.title=element_blank())+
  theme(axis.title.x = element_text(size=30))+theme(axis.title.y = element_text(size=30))
#pdf('D:\\wzs\\ggplot.pdf',height = 3,width = 10)
#dev.off()

df <- read.csv('G:\\AGIS_zhaoqianyi\\result\\juicer.TAD.result.csv',header = T)
df
head(df)
Sample<-df$Sample
p<-ggplot(df,aes(x=raw.reads,y=TAD.coverage))+geom_point(shape=19,size=3,color="red")+xlab("Sequenced.Reads")+ylab("TAD.coverage")+
  stat_smooth(color = "skyblue", formula = y ~ x,fill = "skyblue", method = "lm",se=F,span=0.8)+
  stat_fit_glance(method = "lm",method.args = list(formula = y ~ x),mapping = aes(label = sprintf('R^2~"="~%.3f~~italic(P)~"="~%.2g', stat(r.squared), stat(p.value))),
                  parse = TRUE,label.x = 0.95,label.y = 0.95)
p1 <- p+theme_bw()+theme(axis.text.x = element_text(size=15),axis.text.y = element_text(size=15))+ 
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+theme(legend.title=element_blank())+
  theme(axis.title.x = element_text(size=15))+theme(axis.title.y = element_text(size=15))
p1

p<-ggplot(df,aes(x=Alignable.Reads,y=TAD.maxlength))+geom_point(shape=19,size=3,color="red")+xlab("Alignable.Reads")+ylab("TAD.maxlength")+
  stat_smooth(color = "skyblue", formula = y ~ x,fill = "skyblue", method = "lm")+
  stat_poly_eq(aes(label = paste(..eq.label.., ..adj.rr.label.., sep = '~~~~')),
               formula = y ~ x,  parse = TRUE)
p1 <- p+theme_bw()+theme(axis.text.x = element_text(size=15),axis.text.y = element_text(size=15))+ 
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+theme(legend.title=element_blank())+
  theme(axis.title.x = element_text(size=15))+theme(axis.title.y = element_text(size=15))
p1

p<-ggplot(df,aes(x=deepth,y=TAD.coverage))+geom_point(shape=19,size=3,color="red")+xlab("deepth")+ylab("TAD.coverage")+
  stat_smooth(color = "skyblue", formula = y ~ x,fill = "skyblue", method = "lm")+
  stat_poly_eq(aes(label = paste(..eq.label.., ..adj.rr.label.., sep = '~~~~')),
               formula = y ~ x,  parse = TRUE)
p1 <- p+theme_bw()+theme(axis.text.x = element_text(size=15),axis.text.y = element_text(size=15))+ 
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+theme(legend.title=element_blank())+
  theme(axis.title.x = element_text(size=15))+theme(axis.title.y = element_text(size=15))
p1


p<-ggplot(df,aes(x=TAD.coverage,y=HiCContacts))+geom_point(shape=19,size=3,color="red")+xlab("TAD.coverage")+ylab("HiCContacts")+
  stat_smooth(color = "skyblue", formula = y ~ x,fill = "skyblue", method = "lm")+
  stat_poly_eq(aes(label = paste(..eq.label.., ..adj.rr.label..,..p.value.label.., sep = '~~~~')),
               formula = y ~ x,  parse = TRUE)
p1 <- p+theme_bw()+theme(axis.text.x = element_text(size=15),axis.text.y = element_text(size=15))+ 
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+theme(legend.title=element_blank())+
  theme(axis.title.x = element_text(size=15))+theme(axis.title.y = element_text(size=15))
p1

##############################pvalue##########################################################################
p<-ggplot(df,aes(x=TAD.coverage,y=TAD.number))+geom_point(shape=19,size=3,color="red")+xlab("TAD.coverage")+ylab("TAD.number")+
  stat_smooth(color = "skyblue", formula = y ~ x,fill = "skyblue", method = "lm")+
  stat_poly_eq(aes(label = paste(..eq.label.., ..adj.rr.label..,..p.value.label.., sep = '~~~~')),
               formula = y ~ x,  parse = TRUE)
p1 <- p+theme_bw()+theme(axis.text.x = element_text(size=15),axis.text.y = element_text(size=15))+ 
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+theme(legend.title=element_blank())+
  theme(axis.title.x = element_text(size=15))+theme(axis.title.y = element_text(size=15))
p1
ggsave("E://Rlanguage//lm.TAD.coverage.number.pdf",plot = p1, width = 5, height = 5, dpi = 150, units = "in", device='pdf')

p<-ggplot(df,aes(x=TAD.coverage,y=HiCContacts))+geom_point(shape=19,size=3,color="red")+xlab("TAD.coverage")+ylab("HiCContacts")+
  stat_smooth(color = "skyblue", formula = y ~ x,fill = "skyblue", method = "lm")+
  stat_poly_eq(aes(label = paste(..eq.label.., ..adj.rr.label..,..p.value.label.., sep = '~~~~')),
               formula = y ~ x,  parse = TRUE)
p1 <- p+theme_bw()+theme(axis.text.x = element_text(size=15),axis.text.y = element_text(size=15))+ 
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+
  theme(legend.title=element_blank())+
  theme(axis.title.x = element_text(size=15))+theme(axis.title.y = element_text(size=15))
p1
ggsave("E://Rlanguage//lm.TADcoverage.hiccontacts.pdf",plot = p1, width = 5, height = 5, dpi = 150, units = "in", device='pdf')
p<-ggplot(df,aes(x=deepth,y=HiCContacts))+geom_point(shape=19,size=3,color=df$color)+xlab("deepth")+ylab("HiCContacts")+
  stat_smooth(color = "skyblue", formula = y ~ x,fill = "skyblue", method = "lm")+
  stat_poly_eq(aes(label = paste(..eq.label.., ..adj.rr.label..,..p.value.label.., sep = '~~~~')),
               formula = y ~ x,  parse = TRUE)
p1 <- p+theme_bw()+theme(axis.text.x = element_text(size=15),axis.text.y = element_text(size=15))+ 
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+theme(legend.title=element_blank())+
  geom_text(aes(label = df$breed), hjust = - 0.3)+
  geom_text(aes(label = df$tissue), hjust = 0.3)+
  theme(axis.title.x = element_text(size=15))+theme(axis.title.y = element_text(size=15))+ theme_classic()
p1
ggsave("E://Rlanguage//lable.depth.hiccontacts.pdf",plot = p1, width = 4, height = 3, dpi = 150, units = "in", device='pdf')

p<-ggplot(df,aes(x=deepth,y=TAD.coverage))+geom_point(shape=19,size=3,color="red")+xlab("deepth")+ylab("TAD.coverage")+
  stat_smooth(color = "skyblue", formula = y ~ x,fill = "skyblue", method = "lm")+
  stat_poly_eq(aes(label = paste(..eq.label.., ..adj.rr.label..,..p.value.label.., sep = '~~~~')),
               formula = y ~ x,  parse = TRUE)
p1 <- p+theme_bw()+theme(axis.text.x = element_text(size=15),axis.text.y = element_text(size=15))+ 
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+theme(legend.title=element_blank())+
  theme(axis.title.x = element_text(size=15))+theme(axis.title.y = element_text(size=15))+ theme_classic()
p1
ggsave("E://Rlanguage//lm.depth.TAD.coverage.pdf",plot = p1, width = 5, height = 5, dpi = 150, units = "in", device='pdf')

p<-ggplot(df,aes(x=deepth,y=TAD.number))+geom_point(shape=19,size=3,color="red")+xlab("deepth")+ylab("TAD.number")+
  stat_smooth(color = "skyblue", formula = y ~ x,fill = "skyblue", method = "lm")+
  stat_poly_eq(aes(label = paste(..eq.label.., ..adj.rr.label..,..p.value.label.., sep = '~~~~')),
               formula = y ~ x,  parse = TRUE)
p1 <- p+theme_bw()+theme(axis.text.x = element_text(size=15),axis.text.y = element_text(size=15))+ 
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+theme(legend.title=element_blank())+
  theme(axis.title.x = element_text(size=15))+theme(axis.title.y = element_text(size=15))+ theme_classic()
p1
ggsave("E://Rlanguage//lm.depth.TAD.number.pdf",plot = p1, width = 5, height = 5, dpi = 150, units = "in", device='pdf')
p<-ggplot(df,aes(x=TAD.number,y=HiCContacts))+geom_point(shape=19,size=3,color="red")+xlab("TAD.number")+ylab("HiCContacts")+
  stat_smooth(color = "skyblue", formula = y ~ x,fill = "skyblue", method = "lm")+
  stat_poly_eq(aes(label = paste(..eq.label.., ..adj.rr.label..,..p.value.label.., sep = '~~~~')),
               formula = y ~ x,  parse = TRUE)
p1 <- p+theme_bw()+theme(axis.text.x = element_text(size=15),axis.text.y = element_text(size=15))+ 
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+theme(legend.title=element_blank())+
  theme(axis.title.x = element_text(size=15))+theme(axis.title.y = element_text(size=15))+ theme_classic()
p1
ggsave("E://Rlanguage//lm.TAD.number.hiccontacts.pdf",plot = p1, width = 5, height = 5, dpi = 150, units = "in", device='pdf')
