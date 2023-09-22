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
setwd("E://Rlanguage")
data$TAD.average.length <- log2(data$TAD.average.length)
data <-read.delim("G:\\AGIS_zhaoqianyi\\result\\juicer.TAD.result.csv",sep=",",header = T)
head(data)
#data <-read.delim("D:\\AGIS_zhaoqianyi\\result\\final.flitered.juicer.TAD.csv",sep=",",header=TRUE)
#my_pal <- rcartocolor::carto_pal(n = 8, name = "Bold")[c(1, 3, 7, 2)]
p <- ggplot(data, aes(x = forcats::fct_rev(breed), y = TAD.average.length, 
                 #color = breed, fill = breed)
                 )) +
  geom_boxplot(
    width = .5, fill = "white",
    size = 0.5, outlier.shape = NA
  ) +
 # ggdist::stat_halfeye(
 #   adjust = .33,
 #   width = .67, 
 #   color = NA,
 #   position = position_nudge(x = .15)
 # ) +
  gghalves::geom_half_point(
    side = "l", 
    range_scale = .75, 
    alpha = .5, size = 1
  ) +theme_classic()
  coord_flip() +
  scale_x_discrete(expand = c(.07, .07)) +
  scale_y_continuous(breaks = seq(1300,1900,50))+
  scale_color_manual(values = my_pal, guide = "none") +
  scale_fill_manual(values = my_pal, guide = "none") 
  
p
ggsave("E://Rlanguage//boxplot.whole.breed.average.pdf",plot = last_plot(), width = 4, height = 4, dpi = 150, units = "in", device='pdf')
