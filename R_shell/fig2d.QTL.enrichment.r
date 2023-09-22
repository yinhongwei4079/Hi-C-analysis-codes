library(tidyverse) 
library(reshape2) 
library(scales)  
library(ggsci)
library(ggplot2)
setwd("E://Rlanguage")
SAMN09691004_TAD <-(770324639/1353000000)/(1356608097/2435262063)
SAMN09691005_TAD<-(1009855785/1780000000)/(1356608097/2435262063)
SAMN15870115_TAD<-(926790923/1640550000)/(1356608097/2435262063)
SAMN15870116_TAD<-(969688680/1743100000)/(1356608097/2435262063)
SAMN15870117_TAD<-(988757776/1753650000)/(1356608097/2435262063)
SAMN15870118_TAD<-(991185860/1767900000)/(1356608097/2435262063)
SAMN15870119_TAD<-(962483291/1719100000)/(1356608097/2435262063)
SAMN15870120_TAD<-(976601099/1750750000)/(1356608097/2435262063)
SAMN09691004_TADflank <-(1069558049/1881600000)/(1356608097/2435262063)
SAMN09691005_TADflank<-(1241572042/2187050000)/(1356608097/2435262063)
SAMN15870115_TADflank<-(1197298174/2090550000)/(1356608097/2435262063)
SAMN15870116_TADflank<-(1232266745/2159000000)/(1356608097/2435262063)
SAMN15870117_TADflank<-(1230566876/2162600000)/(1356608097/2435262063)
SAMN15870118_TADflank<-(1236723416/2179400000)/(1356608097/2435262063)
SAMN15870119_TADflank<-(1237373448/2175850000)/(1356608097/2435262063)
SAMN15870120_TADflank<-(1234940061/2167750000)/(1356608097/2435262063)
SAMEA7390796_TAD<-(351660182/1775500000)/(483238297/2435262063)
SAMEA7390798_TAD<-(330026339/1687350000)/(483238297/2435262063)
SAMEA7390799_TAD<-(318504769/1668400000)/(483238297/2435262063)
SAMN13676582_TAD<-(348810039/1793950000)/(483238297/2435262063)
SAMN14422843_TAD<-(323681107/1666400000)/(483238297/2435262063)
SAMEA7390796_TADflank<-(441711094/2185000000)/(483238297/2435262063)
SAMEA7390798_TADflank<-(427289374/2128350000)/(483238297/2435262063)
SAMEA7390799_TADflank<-(421942525/2108850000)/(483238297/2435262063)
SAMN13676582_TADflank<-(447774067/2232050000)/(483238297/2435262063)
SAMN14422843_TADflank<-(416196572/2124950000)/(483238297/2435262063)
SAMN09691004_tribleTAD <-(1069558049/1881600000)/(1356608097/2435262063)
SAMN09691005_tribleTAD<-(1241572042/2187050000)/(1356608097/2435262063)
SAMN15870115_tribleTAD<-(1197298174/2090550000)/(1356608097/2435262063)
SAMN15870116_tribleTAD<-(1232266745/2159000000)/(1356608097/2435262063)
SAMN15870117_tribleTAD<-(1230566876/2162600000)/(1356608097/2435262063)
SAMN15870118_tribleTAD<-(1236723416/2179400000)/(1356608097/2435262063)
SAMN15870119_tribleTAD<-(1237373448/2175850000)/(1356608097/2435262063)
SAMN15870120_tribleTAD<-(1234940061/2167750000)/(1356608097/2435262063)
SAMEA7390796_tribleTAD<-(472615749/2325849999)/(483238297/2435262063)
SAMEA7390798_tribleTAD<-(474265725/2313050000)/(483238297/2435262063)
SAMEA7390799_tribleTAD<-(463004113/2276150000)/(483238297/2435262063)
SAMN13676582_tribleTAD<-(475395282/2334650000)/(483238297/2435262063)
SAMN14422843_tribleTAD<-(463911145/2299899999)/(483238297/2435262063)
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
library(ggplot2)
setwd("E://Rlanguage")
data <-read.csv("fig2c.QTL.enrichment.csv",sep=",",header=T)
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
                     groupnames=c("type", "region"))
data$region = factor(data$region, levels=c("TAD","TADflanking","Both"))



ggplot(data,aes(x=region,y=value,color=type))+
  geom_line() +
  geom_point()+
  geom_errorbar(aes(ymin=value-sd, ymax=value+sd), width=.2,
                position=position_dodge(0.4)) +
  theme_classic() +
  theme(axis.text.x = element_text(angle=45,hjust=1))+
  geom_hline(yintercept = 0.00,linetype="dashed")+
  scale_color_nejm()+ theme(legend.position="right")
ggsave("Fig3c.QTL.enrichment.pdf",last_plot(),"pdf",width = 2,height = 2)
