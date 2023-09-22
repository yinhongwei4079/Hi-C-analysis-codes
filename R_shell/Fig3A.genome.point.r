library(ggplot2)
library(grid)
library(jsonlite)
library(dplyr)
library(tidyr)
library(ggthemes)
setwd("E://Rlanguage")
cod <- read.table("Sus_scrofa.Sscrofa11.1.dna.toplevel.fa.fai",header = T)
cod$chr <- factor(cod$chr,levels = 1:18,ordered = T)
clean.site.df <- read.table("samples.24.ID.merged.TAD.list",header = F)
colnames(clean.site.df) <-  c("chr","start","end","ID_name")
cod$chr <- factor(paste0(cod$chr),levels = paste0(1:18),ordered = T)
diff <- read.table("E://Rlanguage//table2.diff.csv",sep = ",",header = T)

dada <- do.call(rbind,lapply(unique(clean.site.df$chr),function(x){
  dd <- clean.site.df[clean.site.df$chr == x,]
  cc <- sort(unique(c(dd$start,dd$end)))
  d <- data_frame()
  for (i in 2:length(cc)) {
    d <- rbind(d,data.frame(s=cc[i-1],e=cc[i]))
  }
  dx <- sapply(1:nrow(d),function(y){
    sum(rowSums(data.frame(dd$start <= d$s[y], dd$end >= d$e[y])) >= 2)
  })
  d$count <- dx
  d$chr <- x
  d
  #print(max(d$count))
}))
write.table(dada,file="fig2a.dada.csv",sep=",",row.names =TRUE, col.names =TRUE, quote =TRUE)



dada$chr <- factor(paste0(dada$chr),levels = paste0(1:18),ordered = T)
  #gdata <- aggregate(~s+e,dada,length)
  #gdata$chr <- factor(paste0(gdata$Region),levels = paste0(1:18),ordered = T)
  cod$chr <- factor(paste0(cod$chr),levels = paste0(1:18),ordered = T)
  diff$chr <- factor(paste0(diff$chr),levels = paste0(1:18),ordered = T)
  ggplot(data=data.frame(dada))+
    geom_rect(data=cod,aes(xmin = chr_length,xmax = 0, ymin = 0, ymax = 0.5),
              fill = "#FEF0D5", size = 0.15,alpha = 1)+
    geom_rect(aes(xmin = e, xmax = s, ymin = 0, ymax = 0.5, fill = count),
               size = 0.15,alpha = 1)+
    geom_rect(data = diff,aes(xmin=end,xmax=start,ymin = 0 ,ymax = 0.5),fill = "#3951A2",
              size = 0.15,alpha = 1)+
    #geom_point(aes(x=Position,y=0.5,color=loci))+
    #scale_y_continuous(limits = c(-2,2))+
    scale_color_continuous(low="white",high="#F46F44",)+
    scale_fill_continuous(low="white",high="#F46F44",)+
    labs(color = 'Frequency') +
    coord_flip() + 
    facet_grid(. ~ chr, scales = "free", space = "free") + 
    theme_tufte()+
    theme(axis.title = element_blank(),
          axis.text.x = element_blank(),
          axis.ticks.x = element_blank(),
          strip.text.x = element_text(size = 15))

ggsave("Fig2A.genome.point.modify.pdf", last_plot(), "pdf", width = 9,height = 9)

####################################################################################################
clean.site.df <- read.table("fig2Aconserve.differ.csv",sep = ",",header = T)
#colnames(clean.site.df) <-  c("chr","start","end")
dada <- do.call(rbind,lapply(unique(clean.site.df$chr),function(x){
  dd <- clean.site.df[clean.site.df$chr == x,]
  cc <- sort(unique(c(dd$start,dd$end)))
  d <- data_frame()
  for (i in 2:length(cc)) {
    d <- rbind(d,data.frame(s=cc[i-1],e=cc[i]))
  }
  dx <- sapply(1:nrow(d),function(y){
    sum(rowSums(data.frame(dd$start <= d$s[y], dd$end >= d$e[y])) >= 2)
  })
  d$count <- dx
  d$chr <- x
  d
  #print(max(d$count))
}))

dada$chr <- factor(paste0(dada$chr),levels = paste0(1:18),ordered = T)
#gdata <- aggregate(~s+e,dada,length)
#gdata$chr <- factor(paste0(gdata$Region),levels = paste0(1:18),ordered = T)
#cod$chr <- factor(paste0(cod$chr),levels = paste0(1:18),ordered = T)
ggplot(data=data.frame(dada))+
  geom_rect(data=cod,aes(xmin = chr_length, xmax = 0, ymin = 1, ymax = 0),
            fill = "#FEF0D5", size = 0.5,alpha = 1)+
  geom_rect(aes(xmin = e, xmax = s, ymin = 1.5, ymax = 0, fill = count),
            size = 0.5,alpha = 1)+
  #geom_point(aes(x=Position,y=0.5,color=loci))+
  #scale_y_continuous(limits = c(-2,2))+
  scale_color_continuous(low="white",high="#F46F44",)+
  scale_fill_continuous(low="white",high="#F46F44",)+
  labs(color = 'Frequency') +
  coord_flip() + 
  facet_grid(. ~ chr, scales = "free", space = "free") + 
  theme_tufte()+
  theme(axis.title = element_blank(),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank(),
        strip.text.x = element_text(size = 15))
