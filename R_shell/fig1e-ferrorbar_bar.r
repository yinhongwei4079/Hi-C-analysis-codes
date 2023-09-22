###error bar
library(ggplot2)
library(reshape2)
library(RColorBrewer)
library(colorspace)
library(tidyverse)
library(palmerpenguins)
setwd("E://Rlanguage")
mycol= brewer.pal(n = 12, name = "Set3")
hcl_palettes("sequential (single-hue)", n = 7, plot = TRUE)
colorspace::sequential_hcl(n = 7, palette = "Grays")%>% 
  colorspace::swatchplot()
data = read.csv("E:\\Rlanguage\\final.flitered.juicer_public_results.csv",header = T)
head(data)
data$HiCContacts <- log2(data$HiCContacts)
data_melt <- melt(data,id.vars = c("breed","tissue"),measure.vars ="HiCContacts",variable.name = "parameters",value.name = "count")
breed_count_mean<- aggregate(data_melt$count, by=list(data_melt$breed, data_melt$parameters), FUN=mean)
breed_count_sd <- aggregate(data_melt$count, by=list(data_melt$breed, data_melt$parameters), FUN=sd)
breed_count_len <- aggregate(data_melt$count, by=list(data_melt$breed, data_melt$parameters), FUN=length)
breed_count_res <- data.frame(breed_count_mean, sd=breed_count_sd$x, len=breed_count_len$x)
colnames(breed_count_res) = c("Species", "HiCcontacts", "Mean", "Sd", "Count")
str(breed_count_res)
breed_count_res$Se <- breed_count_res$Sd/sqrt(breed_count_res$Count)
p <- ggplot(breed_count_res, aes(x=HiCcontacts, y=Mean, fill=Species)) +
  geom_bar(stat="identity", position=position_dodge(), color = "black",width=.6) +
  scale_fill_manual(values = mycol) +
  #scale_y_continuous(limits = c(5,20))+
  geom_errorbar(aes(ymin=Mean-Sd, ymax=Mean +Sd),position=position_dodge(.6),width=.2)+
  theme_bw()+theme_classic()+scale_y_continuous(expand = c(0, 0))+coord_cartesian(ylim = c(0,50))
p
ggsave("Fig1e.breed.HiCcontacts.pdf", last_plot(), "pdf", width = 4,height = 4)


tissue_count_mean<- aggregate(data_melt$count, by=list(data_melt$tissue, data_melt$parameters), FUN=mean)
tissue_count_sd <- aggregate(data_melt$count, by=list(data_melt$tissue, data_melt$parameters), FUN=sd)
tissue_count_len <- aggregate(data_melt$count, by=list(data_melt$tissue, data_melt$parameters), FUN=length)
tissue_count_res <- data.frame(tissue_count_mean, sd=tissue_count_sd$x, len=tissue_count_len$x)
colnames(tissue_count_res) = c("Tissue", "HiCcontacts", "Mean", "Sd", "Count")
str(tissue_count_res)
tissue_count_res$Se <- tissue_count_res$Sd/sqrt(tissue_count_res$Count)
p <- ggplot(tissue_count_res, aes(x=HiCcontacts, y=Mean, fill=Tissue)) +
  geom_bar(stat="identity", position=position_dodge(),color="black", width=.6) +
  #scale_y_continuous(limits = c(5,20))+
  geom_errorbar(aes(ymin=Mean-Sd, ymax=Mean +Sd),position=position_dodge(.6), width=.2)+
  scale_fill_manual(values = mycol)+
  theme_bw()+theme_classic()+scale_y_continuous(expand = c(0, 0))+coord_cartesian(ylim = c(0,50))
p
ggsave("Fig1e.tissue.HiCcontacts.pdf", last_plot(), "pdf", width = 4,height = 4)






data$TADnumber <- log2(data$TADnumber)
data_melt <- melt(data,id.vars = c("breed","tissue"),measure.vars ="TADnumber",variable.name = "parameters",value.name = "number")
head(data_melt)
breed_number_mean<- aggregate(data_melt$number, by=list(data_melt$breed, data_melt$parameters), FUN=mean)
breed_number_sd <- aggregate(data_melt$number, by=list(data_melt$breed, data_melt$parameters), FUN=sd)
breed_number_len <- aggregate(data_melt$number, by=list(data_melt$breed, data_melt$parameters), FUN=length)
breed_number_res <- data.frame(breed_number_mean, sd=breed_number_sd$x, len=breed_number_len$x)
colnames(breed_number_res) = c("Species", "TADnumber", "Mean", "Sd", "Count")
str(breed_number_res)
breed_number_res$Mean <- log2(breed_number_res$Mean)
breed_number_res$Se <- breed_number_res$Sd/sqrt(breed_number_res$Count)
p <- ggplot(breed_number_res, aes(x=TADnumber, y=Mean, fill=Species)) +
  geom_bar(stat="identity", position=position_dodge(), width=.6) +
  scale_fill_manual(values = mycol) +
  #scale_y_continuous(limits = c(5,20))+
  geom_errorbar(aes(ymin=Mean-Sd, ymax=Mean +Sd),position=position_dodge(.6), width=.2)+
  theme_bw()+theme_classic()+coord_cartesian(ylim = c(0,1500))
p
ggsave("Fig1e.breed.TADnumber.pdf", last_plot(), "pdf", width = 4,height = 4)
tissue_number_mean<- aggregate(data_melt$number, by=list(data_melt$tissue, data_melt$parameters), FUN=mean)
tissue_number_sd <- aggregate(data_melt$number, by=list(data_melt$tissue, data_melt$parameters), FUN=sd)
tissue_number_len <- aggregate(data_melt$number, by=list(data_melt$tissue, data_melt$parameters), FUN=length)
tissue_number_res <- data.frame(tissue_number_mean, sd=tissue_number_sd$x, len=tissue_number_len$x)
colnames(tissue_number_res) = c("Tissue", "TADnumber", "Mean", "Sd", "Count")
str(tissue_number_res)
tissue_number_res$Se <- tissue_number_res$Sd/sqrt(tissue_number_res$Count)
ggplot(tissue_number_res, aes(x=TADnumber, y=Mean, fill=Tissue)) +
  geom_bar(stat="identity", position=position_dodge(), width=.6) +
  scale_fill_manual(values = mycol) +
  #scale_y_continuous(limits = c(5,20))+
  geom_errorbar(aes(ymin=Mean-Sd, ymax=Mean +Sd),position=position_dodge(.6), width=.2)+
  theme_bw()+theme_classic()+coord_cartesian(ylim = c(0,1500))
ggsave("Fig1e.tisssue.TAD.number.pdf", last_plot(), "pdf", width = 4,height = 4)

data = read.csv("E:\\Rlanguage\\final.flitered.juicer_public_results.csv",header = T)
data$TADaverage.length <- log2(data$TADaverage.length)
data_melt <- melt(data,id.vars = c("breed","tissue"),measure.vars ="TADaverage.length",variable.name = "parameters",value.name = "number")
breed_mean <- aggregate(data_melt$number, by=list(data_melt$breed, data_melt$parameters), FUN=mean)
breed_sd <- aggregate(data_melt$number, by=list(data_melt$breed, data_melt$parameters), FUN=sd)
breed_len <- aggregate(data_melt$number, by=list(data_melt$breed, data_melt$parameters), FUN=length)
breed_res <- data.frame(breed_mean, sd=breed_sd$x, len=breed_len$x)
colnames(breed_res) = c("Species", "average.length", "Mean", "Sd", "Count")
str(breed_res)
breed_res$Se <- breed_res$Sd/sqrt(breed_res$Count)
p <- ggplot(breed_res, aes(x=average.length, y=Mean, fill=Species)) +
  geom_bar(stat="identity", position=position_dodge(),color="black", width=.6) +
  scale_fill_manual(values = mycol) +
  #scale_y_continuous(limits = c(5,20))+
  geom_errorbar(aes(ymin=Mean-Sd, ymax=Mean +Sd),position=position_dodge(.6), width=.2)+
theme_bw()+theme_classic()+coord_cartesian(ylim = c(0,40))
p
ggsave("Fig1e.breed.averagelength.pdf", last_plot(), "pdf", width = 4,height = 4)
data$HiCContacts <- log2(data$HiCContacts)
tissue_mean <- aggregate(data_melt$number, by=list(data_melt$tissue, data_melt$parameters), FUN=mean)
tissue_sd <- aggregate(data_melt$number, by=list(data_melt$tissue, data_melt$parameters), FUN=sd)
tissue_len <- aggregate(data_melt$number, by=list(data_melt$tissue, data_melt$parameters), FUN=length)
tissue_res <- data.frame(tissue_mean, sd=tissue_sd$x, len=tissue_len$x)
colnames(tissue_res) = c("Tissue", "average.length", "Mean", "Sd", "Count")
str(tissue_res)
tissue_res$Se <- tissue_res$Sd/sqrt(tissue_res$Count)
p1<- ggplot(tissue_res, aes(x=average.length, y=Mean, fill=Tissue)) +
  geom_bar(stat="identity", position=position_dodge(),color="black", width=.6) +
  scale_fill_manual(values = mycol) +
  #scale_y_continuous(limits = c(5,20))+
  geom_errorbar(aes(ymin=Mean-Sd, ymax=Mean +Sd),position=position_dodge(.6), width=.2)+
  theme_bw()+theme_classic()+coord_cartesian(ylim = c(0,40))
ggsave("Fig1e.tissue.averagelength.pdf", last_plot(), "pdf", width = 4,height = 4)

df <- iris
head(df)
df <- melt(df, id="Species", variable.name="Attribute", value.name = "Size")

mean <- aggregate(df$Size, by=list(df$Species, df$Attribute), FUN=mean)
sd <- aggregate(df$Size, by=list(df$Species, df$Attribute), FUN=sd)
len <- aggregate(df$Size, by=list(df$Species, df$Attribute), FUN=length)
df_res <- data.frame(mean, sd=sd$x, len=len$x)
colnames(df_res) = c("Species", "Attribute", "Mean", "Sd", "Count")
str(df_res)
df_res$Se <- df_res$Sd/sqrt(df_res$Count) 
