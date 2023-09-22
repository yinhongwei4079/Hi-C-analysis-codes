library(jjAnno)
library(reshape2)
library(ggplot2)
library(RColorBrewer)
#test <- as.data.frame(matrix(data = sample(0:50,105,replace = T),ncol = 5))
#colnames(test) <- c('Heterogeneous selection','Homogeneous selection',
                  #  'Dispersal limitation','Homogenizing dispersal',
                  #  'Undominated')
#test$type1 <- rep(c('Plastic leaf','Phylloplane','Leaf endosphere',
               # 'Rhizoplane','Root endosphere','Rhizosphere soil',
               # 'Bulk soil'),each = 3)
#test$type2 <- rep(c('Seeding stage','Tasseling stage','Mature stage'),7)
#test$type3 <- rep(c('Air','Plant','Soil'),c(3,12,6))
setwd("E://Rlanguage")
df <-  read.table("fig2b_venn.modify.csv",sep = ",",header = T)
da <- melt(df,id.vars = c('Comparison','num','type'))
ggplot(data = da,aes(x = Comparison,y = num)) +
  geom_col(aes(fill = factor(type,levels = c("A.Specific.proportion","conserve","B.Specific.proportion"))),#type
           position = position_fill()) +
  scale_fill_brewer(palette = 'Set1',name = 'Ecological process') +
  scale_y_continuous(labels = scales::percent_format()) +
  theme_bw(base_size = 18) +
  coord_cartesian(expand = 0,clip = 'off') +
  xlab('') + ylab('') +
  theme(plot.margin = margin(t = 1,b = 3,unit = 'cm'))+theme_classic()+
  theme(axis.text.x = element_text(angle = 30,hjust=1),)
  
ggsave("fig2B.pdf",last_plot(),"pdf",width = 4,height = 4)

