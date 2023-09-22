##fisher.test
##GWAS
##TAD--ADG
ADG_OR=(75825/2326550015)/(77878/2435262063)#1.019133
BFT_OR = (189559/2326550015)/(194180/2435262063)#1.021817
DAYS_OR=(28042/2326550015)/(28136/2435262063)#1.04323
GD_OR=(4332/2326550015)/(4343/2435262063)#1.044076
LEANCUTP_OR=(19819/2326550015)/(20015/2435262063)# 1.036476
LMA_OR=(65076/2326550015)/(66100/2435262063)#1.030511
LMDEP_OR=(68981/2326550015)/(69339/2435262063)#1.041322
NBA_D21_OR=(2788/2326550015)/(2789/2435262063)#1.046351
NBA_OR=(11810/2326550015)/(13075/2435262063)# 0.9454564
NBH_OR=(8280/2326550015)/(8363/2435262063)#1.036338
TLWT_BA_OR=(56464/2326550015)/(57067/2435262063)#1.035666
TLWT_Weaning_OR=(8958/2326550015)/(8962/2435262063)#1.04626
TNB_OR=(17579/2326550015)/(18019/2435262063)#1.021167
TNUM_OR=(93014/2326550015)/(96112/2435262063)#1.023074
UC_OR=(1849/2326550015)/(1851/2435262063)#1.045596


##total--TADflank
ADG_OR=(77808/2381700000)/(77878/2435262063)#1.02157
BFT_OR = (194171/2381700000)/(194180/2435262063)#1.022442
DAYS_OR=(28128/2381700000)/(28136/2435262063)#1.022198
GD_OR=(4343/2381700000)/(4343/2435262063)#1.022489
LEANCUTP_OR=(20008/2381700000)/(20015/2435262063)# 1.022131
LMA_OR=(66087/2381700000)/(66100/2435262063)#1.022288
LMDEP_OR=(69338/2381700000)/(69339/2435262063)#1.022474
NBA_D21_OR=(2788/2381700000)/(2789/2435262063)#1.022122
NBA_OR=(13075/2381700000)/(13075/2435262063)#1.022489
NBH_OR=(8363/2381700000)/(8363/2435262063)#1.022489
TLWT_BA_OR=(57067/2381700000)/(57067/2435262063)#1.022489
TLWT_Weaning_OR=(8962/2381700000)/(8962/2435262063)#1.022489
TNB_OR=(18018/2381700000)/(18019/2435262063)# 1.022432
TNUM_OR=(94552/2381700000)/(96112/2435262063)#1.005893
UC_OR=(1851/2381700000)/(1851/2435262063)#1.022489


##total--TADtrible
ADG_OR=(77808/2393799991)/(77878/2435262063)#1.016406
BFT_OR = (194171/2393799991)/(194180/2435262063)#1.017273
DAYS_OR=(28128/2393799991)/(28136/2435262063)#1.017031
GD_OR=(4343/2393799991)/(4343/2435262063)#1.017321
LEANCUTP_OR=(20015/2393799991)/(20015/2435262063)# 1.017321
LMA_OR=(66096/2393799991)/(66100/2435262063)#1.017321
LMDEP_OR=(69338/2393799991)/(69339/2435262063)# 1.017306
NBA_D21_OR=(2788/2393799991)/(2789/2435262063)#1.016956
NBA_OR=(13075/2393799991)/(13075/2435262063)# 1.017321
NBH_OR=(8363/2393799991)/(8363/2435262063)#1.017321
TLWT_BA_OR=(57067/2393799991)/(57067/2435262063)# 1.017321
TLWT_Weaning_OR=(8962/2393799991)/(8962/2435262063)#1.017321
TNB_OR=(18018/2393799991)/(18019/2435262063)#1.017264
TNUM_OR=(94582/2393799991)/(96112/2435262063)#1.001126
UC_OR=(1851/2393799991)/(1851/2435262063)#1.017321

library(tidyverse)     ## data wrangling + ggplot2
library(colorspace)    ## adjust colors
library(rcartocolor)   ## Carto palettes
library(ggforce)       ## sina plots
library(ggdist)        ## halfeye plots
library(ggridges)      ## ridgeline plots
library(ggbeeswarm)    ## beeswarm plots
library(gghalves)      ## off-set jitter
library(systemfonts)   ## custom fonts
library(ggsci)
library(paletteer)
library(grDevices)
library(RColorBrewer)
library(cowplot)
setwd("E://Rlanguage")
data <-read.csv("fig3c.GWAS.part.enrich.csv",sep=",",header=T)
head(data)
data$value <- log2(data$value)
data_summary <- function(data, varname, groupnames){
  require(plyr)
  summary_func <- function(x, col){
    c(mean = mean(x[[col]], na.rm=TRUE),
      sd = sd(x[[col]], na.rm=TRUE))
  }
  data_sum<-ddply(data, groupnames, .fun=summary_func,
                  varname)
  data_sum <- rename(data_sum, c("mean" = varname))
  return(data_sum)
}
data <- data_summary(data, varname="value", 
                     groupnames=c("GWAS", "type"))

ggplot(data,aes(x=type,y=value,color=GWAS))+
  geom_line() +
  geom_point()+
  geom_errorbar(aes(ymin=value-sd, ymax=value+sd), width=.2,
                position=position_dodge(0.4)) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45,hjust=1))+
  geom_hline(yintercept = 0.00,linetype="dashed")+
  scale_color_nejm()
  
data$type = factor(data$type, levels=c("TAD","flanking","both"))
p1
ggsave("Fig3c.GWAS.total.enrich.pdf",last_plot(),"pdf",width = 4,height =2)

P <-plot_grid(p1,p,nrow = 1)

ggsave("Fig3c.GWAS.pdf",P,"pdf",width =12,height =15)

