library(tidyverse) 
library(reshape2) 
library(scales)  
library(ggsci)
library(ggplot2)
setwd("E://Rlanguage")
SAMN09691004_TAD <-(38680/6639493)/(154620/15462038)
SAMN09691005_TAD<-(81810/10487469)/(154620/15462038)
SAMN15870115_TAD<-(90586/10026171)/(154620/15462038)
SAMN15870116_TAD<-(100175/10719977)/(154620/15462038)
SAMN15870117_TAD<-(99376/10728428)/(154620/15462038)
SAMN15870118_TAD<-(97780/10693626)/(154620/15462038)
SAMN15870119_TAD<-(95794/10454231)/(154620/15462038)
SAMN15870120_TAD<-(96678/10618515)/(154620/15462038)
SAMN09691006_TAD <-(73747/7687817)/(100832/10083161)
SAMN09691007_TAD<-(76420/7823075)/(100832/10083161)
SAMN09691009_TAD<-(69266/7188989)/(100832/10083161)
SAMN09691010_TAD<-(70949/7416470)/(100832/10083161)
SAMN09691011_TAD<-(66429/7046469)/(100832/10083161)
SAMN09691012_TAD<-(67539/7237810)/(100832/10083161)
SAMEA7390796_TAD<-(57492/6142414)/(95708/9570794)
SAMEA7390798_TAD<-(58066/6130391)/(95708/9570794)
SAMEA7390799_TAD<-(54720/5857606)/(95708/9570794)
SAMN13676582_TAD<-(66854/6744538)/(95708/9570794)
SAMN14422843_TAD<-(62728/6382669)/(95708/9570794)
SAMN09691004_TADflank <-(97390/11175777)/(154620/15462038)
SAMN09691005_TADflank<-(132368/13869232)/(154620/15462038)
SAMN15870115_TADflank<-(132205/13544477)/(154620/15462038)
SAMN15870116_TADflank<-(138559/13992714)/(154620/15462038)
SAMN15870117_TADflank<-(138436/14027957)/(154620/15462038)
SAMN15870118_TADflank<-(139418/14128085)/(154620/15462038)
SAMN15870119_TADflank<-(137612/14008778)/(154620/15462038)
SAMN15870120_TADflank<-(138292/13963653)/(154620/15462038)
SAMN09691006_TADflank <-(93634/9310468)/(100832/10083161)
SAMN09691007_TADflank<-(93697/9364352)/(100832/10083161)
SAMN09691009_TADflank<-(91806/9075428)/(100832/10083161)
SAMN09691010_TADflank<-(92259/9075428)/(100832/10083161)
SAMN09691011_TADflank<-(89235/9116784)/(100832/10083161)
SAMN09691012_TADflank<-(93746/9230971)/(100832/10083161)
SAMEA7390796_TADflank<-(86196/8646701)/(95708/9570794)
SAMEA7390798_TADflank<-(86087/8601251)/(95708/9570794)
SAMEA7390799_TADflank<-(82604/8332547)/(95708/9570794)
SAMN13676582_TADflank<-(87851/8777630)/(95708/9570794)
SAMN14422843_TADflank<-(83074/8370466)/(95708/9570794)
SAMN09691004_tribleTAD <-(107159/12640422)/(154620/15462038)
SAMN09691005_tribleTAD<-(140365/14629592)/(154620/15462038)
SAMN15870115_tribleTAD<-(145044/14646077)/(154620/15462038)
SAMN15870116_tribleTAD<-(146903/14745744)/(154620/15462038)
SAMN15870117_tribleTAD<-(147588/14843996)/(154620/15462038)
SAMN15870118_tribleTAD<-(147462/14865720)/(154620/15462038)
SAMN15870119_tribleTAD<-(145906/14731257)/(154620/15462038)
SAMN15870120_tribleTAD<-(146351/14756457)/(154620/15462038)
SAMN09691006_tribleTAD <-(97538/9650479)/(100832/10083161)
SAMN09691007_tribleTAD<-(97509/9679163)/(100832/10083161)
SAMN09691009_tribleTAD<-(97503/9625655)/(100832/10083161)
SAMN09691010_tribleTAD<-(97257/9628672)/(100832/10083161)
SAMN09691011_tribleTAD<-(96087/9551810)/(100832/10083161)
SAMN09691012_tribleTAD<-(98213/9720114)/(100832/10083161)
SAMEA7390796_tribleTAD<-(90902/9110543)/(95708/9570794)
SAMEA7390798_tribleTAD<-(91491/9143776)/(95708/9570794)
SAMEA7390799_tribleTAD<-(88163/8851856)/(95708/9570794)
SAMN13676582_tribleTAD<-(92398/9206220)/(95708/9570794)
SAMN14422843_tribleTAD<-(89611/8966993)/(95708/9570794)
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
data <-read.csv("fig2c.function.enrichment.csv",sep=",",header=T)
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
library(ggpubr)
data <- data_summary(data, varname="value", 
                     groupnames=c("type", "region"))
data$region = factor(data$region, levels=c("TAD","TADflanking","Both"))
compare_means(formula, data, method = "wilcox.test", paired = FALSE,
  group.by = NULL, ref.group = NULL, ...)
compare_means(value~region, data, method = "t.test", paired = T)

ggplot(data,aes(x=region,y=value,color=type))+
  geom_line() +
  geom_point()+
  geom_errorbar(aes(ymin=value-sd, ymax=value+sd), width=.2,
                position=position_dodge(0.4)) +
  theme_classic() +
  theme(axis.text.x = element_text(angle=45,hjust=1))+
  geom_hline(yintercept = 0.00,linetype="dashed")+
  scale_color_nejm()+ theme(legend.position="none")#+stat_compare_means(mapping = NULL, comparisons = NULL hide.ns = FALSE,
                                                                       label = NULL,  label.x = NULL, label.y = NULL,  ...)


ggsave("Fig3c.function.enrichment.pdf",last_plot(),"pdf",width = 2,height = 2)
