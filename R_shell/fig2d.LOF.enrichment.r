library(tidyverse) 
library(reshape2) 
library(scales)  
library(ggsci)
library(ggplot2)
setwd("E://Rlanguage")
###################################splice_acceptor#####################
############TADflank--splice-acceptor##############################
SAMEA7390796.flank.splice_acceptor <- matrix(c(5227,39017518,5776,42523218),nrow=2)
fisher.test(SAMEA7390796.flank.splice_acceptor)# 0.9862597  
SAMEA7390798.flank.splice_acceptor <- matrix(c(5188,38411238,5776,42523218),nrow=2)
fisher.test(SAMEA7390798.flank.splice_acceptor)#0.9943528 
SAMEA7390799.flank.splice_acceptor <- matrix(c(5006,37810315,5776,42523218),nrow=2)
fisher.test(SAMEA7390799.flank.splice_acceptor)# 0.9747157
SAMN09690999.flank.splice_acceptor<- matrix(c(4959,38392855,5776,42523218),nrow=2)
fisher.test(SAMN09690999.flank.splice_acceptor)# 0.9509044
SAMN09691000.flank.splice_acceptor<- matrix(c(4872,37935049,5776,42523218),nrow=2)
fisher.test(SAMN09691000.flank.splice_acceptor)# 0.9454939 
SAMN09691001.flank.splice_acceptor<- matrix(c(5148,39236677,5776,42523218),nrow=2)
fisher.test(SAMN09691001.flank.splice_acceptor)# 0.9659224
SAMN09691002.flank.splice_acceptor<- matrix(c(4974,39062133,5776,42523218),nrow=2)
fisher.test(SAMN09691002.flank.splice_acceptor)# 0.9374306
SAMN09691004.flank.splice_acceptor<- matrix(c(3875,33077508,5776,42523218),nrow=2)
fisher.test(SAMN09691004.flank.splice_acceptor)# 0.8624687  
SAMN09691005.flank.splice_acceptor<- matrix(c(5034,39008553,5776,42523218),nrow=2)
fisher.test(SAMN09691005.flank.splice_acceptor)# 0.9500491 
SAMN09691006.flank.splice_acceptor<- matrix(c(5345,39815753,5776,42523218),nrow=2)
fisher.test(SAMN09691006.flank.splice_acceptor)#0.9883058 
SAMN09691007.flank.splice_acceptor<- matrix(c(5344,39958339,5776,42523218),nrow=2)
fisher.test(SAMN09691007.flank.splice_acceptor)# 0.9845942 
SAMN09691009.flank.splice_acceptor<- matrix(c(5183,38804121,5776,42523218),nrow=2)
fisher.test(SAMN09691009.flank.splice_acceptor)# 0.9833352
SAMN09691010.flank.splice_acceptor<- matrix(c(5263,39121905,5776,42523218),nrow=2)
fisher.test(SAMN09691010.flank.splice_acceptor)# 0.9904033
SAMN09691011.flank.splice_acceptor<- matrix(c(5140,38074181,5776,42523218),nrow=2)
fisher.test(SAMN09691011.flank.splice_acceptor)# 0.9938741
SAMN09691012.flank.splice_acceptor<- matrix(c(5314,39076772,5776,42523218),nrow=2)
fisher.test(SAMN09691012.flank.splice_acceptor)#  1.001156
SAMN13676582.flank.splice_acceptor <- matrix(c(5281,39884708,5776,42523218),nrow=2)
fisher.test(SAMN13676582.flank.splice_acceptor)# 0.9747807 
SAMN14422843.flank.splice_acceptor<- matrix(c(5029,38015090,5776,42523218),nrow=2)
fisher.test(SAMN14422843.flank.splice_acceptor)# 0.9739191
SAMN15398106.flank.splice_acceptor<- matrix(c(4775,37008128,5776,42523218),nrow=2)
fisher.test(SAMN15398106.flank.splice_acceptor)# 0.9498822 
SAMN15870115.flank.splice_acceptor<- matrix(c(5001,37619253,5776,42523218),nrow=2)
fisher.test(SAMN15870115.flank.splice_acceptor)# 0.9786886 
SAMN15870116.flank.splice_acceptor<- matrix(c(5209,38788384,5776,42523218),nrow=2)
fisher.test(SAMN15870116.flank.splice_acceptor)# 0.9886698 
SAMN15870117.flank.splice_acceptor<- matrix(c(5186,38845451,5776,42523218),nrow=2)
fisher.test(SAMN15870117.flank.splice_acceptor)#  0.9828574  
SAMN15870118.flank.splice_acceptor<- matrix(c(5233,39063914,5776,42523218),nrow=2)
fisher.test(SAMN15870118.flank.splice_acceptor)# 0.9862191 
SAMN15870119.flank.splice_acceptor<- matrix(c(5150,39013463,5776,42523218),nrow=2)
fisher.test(SAMN15870119.flank.splice_acceptor)#  0.9718284  
SAMN15870120.flank.splice_acceptor<- matrix(c(5175,38760110,5776,42523218),nrow=2)
fisher.test(SAMN15870120.flank.splice_acceptor)# 0.9829321 

################trible--splice-acceptor##################
SAMEA7390796.trible.splice_acceptor <- matrix(c(5568,41914947,5776,42523218),nrow=2)
fisher.test(SAMEA7390796.trible.splice_acceptor)# 0.9779749  
SAMEA7390798.trible.splice_acceptor <- matrix(c(5565,41707959,5776,42523218),nrow=2)
fisher.test(SAMEA7390798.trible.splice_acceptor)#0.9823001 
SAMEA7390799.trible.splice_acceptor <- matrix(c(5395,41205575,5776,42523218),nrow=2)
fisher.test(SAMEA7390799.trible.splice_acceptor)# 0.9638968
SAMN09690999.trible.splice_acceptor<- matrix(c(5280,41102510,5776,42523218),nrow=2)
fisher.test(SAMN09690999.trible.splice_acceptor)# 0.9457059 
SAMN09691000.trible.splice_acceptor<- matrix(c(5241,40862752,5776,42523218),nrow=2)
fisher.test(SAMN09691000.trible.splice_acceptor)# 0.9442278 
SAMN09691001.trible.splice_acceptor<- matrix(c(5470,41737135,5776,42523218),nrow=2)
fisher.test(SAMN09691001.trible.splice_acceptor)# 0.9648501 
SAMN09691002.trible.splice_acceptor<- matrix(c(5268,41313306,5776,42523218),nrow=2)
fisher.test(SAMN09691002.trible.splice_acceptor)# 0.9374306
SAMN09691004.trible.splice_acceptor<- matrix(c(4194,37521521,5776,42523218),nrow=2)
fisher.test(SAMN09691004.trible.splice_acceptor)# 0.8229005  
SAMN09691005.trible.splice_acceptor<- matrix(c(5305,41335847,5776,42523218),nrow=2)
fisher.test(SAMN09691005.trible.splice_acceptor)# 0.9448192 
SAMN09691006.trible.splice_acceptor<- matrix(c(5664,42001307,5776,42523218),nrow=2)
fisher.test(SAMN09691006.trible.splice_acceptor)# 0.9927941  
SAMN09691007.trible.splice_acceptor<- matrix(c(5661,42165246,5776,42523218),nrow=2)
fisher.test(SAMN09691007.trible.splice_acceptor)# 0.9884097 
SAMN09691009.trible.splice_acceptor<- matrix(c(5598,41845280,5776,42523218),nrow=2)
fisher.test(SAMN09691009.trible.splice_acceptor)# 0.984883 
SAMN09691010.trible.splice_acceptor<- matrix(c(5632,31811382,5776,42523218),nrow=2)
fisher.test(SAMN09691010.trible.splice_acceptor)# 1.303392
SAMN09691011.trible.splice_acceptor<- matrix(c(5576,41630647,5776,42523218),nrow=2)
fisher.test(SAMN09691011.trible.splice_acceptor)# 0.9860704
SAMN09691012.trible.splice_acceptor<- matrix(c(5677,41917395,5776,42523218),nrow=2)
fisher.test(SAMN09691012.trible.splice_acceptor)# 0.9970651
SAMN13676582.trible.splice_acceptor <- matrix(c(5499,41372556,5776,42523218),nrow=2)
fisher.test(SAMN13676582.trible.splice_acceptor)# 0.9785182 
SAMN14422843.trible.splice_acceptor<- matrix(c(5551,41592405,5776,42523218),nrow=2)
fisher.test(SAMN14422843.trible.splice_acceptor)# 0.9825512
SAMN15398106.trible.splice_acceptor<- matrix(c(5109,40438204,5776,42523218),nrow=2)
fisher.test(SAMN15398106.trible.splice_acceptor)# 0.9301007 
SAMN15870115.trible.splice_acceptor<- matrix(c(5001,28329999,5776,42523218),nrow=2)
fisher.test(SAMN15870115.trible.splice_acceptor)# 1.299581
SAMN15870116.trible.splice_acceptor<- matrix(c(5209,38788384,5776,42523218),nrow=2)
fisher.test(SAMN15870116.trible.splice_acceptor)# 0.9886698 
SAMN15870117.trible.splice_acceptor<- matrix(c(5186,29940323,5776,42523218),nrow=2)
fisher.test(SAMN15870117.trible.splice_acceptor)# 0.9886698  
SAMN15870118.trible.splice_acceptor<- matrix(c(5233,30558718,5776,42523218),nrow=2)
fisher.test(SAMN15870118.trible.splice_acceptor)# 1.260698 
SAMN15870119.trible.splice_acceptor<- matrix(c(5150,29964711,5776,42523218),nrow=2)
fisher.test(SAMN15870119.trible.splice_acceptor)# 1.265296   
SAMN15870120.trible.splice_acceptor<- matrix(c(5175,29816108,5776,42523218),nrow=2)
fisher.test(SAMN15870120.trible.splice_acceptor)# 1.277774
######################TAD--splice-acceptor###########################
SAMEA7390796.TAD.splice_donor <- matrix(c(3091,31811382,5776,42523218),nrow=2)
fisher.test(SAMEA7390796.TAD.splice_donor)# 0.7153456 
SAMEA7390798.TAD.splice_donor <- matrix(c(2994,30736133,5776,42523218),nrow=2)
fisher.test(SAMEA7390798.TAD.splice_donor)# 0.7171366 
SAMEA7390799.TAD.splice_donor <- matrix(c(2888,29764701,5776,42523218),nrow=2)
fisher.test(SAMEA7390799.TAD.splice_donor)# 0.7143235
SAMN09690999.TAD.splice_donor<- matrix(c(2747,30829313,5776,42523218),nrow=2)
fisher.test(SAMN09690999.TAD.splice_donor)# 0.6559856
SAMN09691000.TAD.splice_donor<- matrix(c(2440,29548293,5776,42523218),nrow=2)
fisher.test(SAMN09691000.TAD.splice_donor)# 0.6079351
SAMN09691001.TAD.splice_donor<- matrix(c(2912,32295472,5776,42523218),nrow=2)
fisher.test(SAMN09691001.TAD.splice_donor)# 0.6638184 
SAMN09691002.TAD.splice_donor<- matrix(c(2766,31572851,5776,42523218),nrow=2)
fisher.test(SAMN09691002.TAD.splice_donor)# 0.6605228
SAMN09691004.TAD.splice_donor<- matrix(c(1537,23523630,5776,42523218),nrow=2)
fisher.test(SAMN09691004.TAD.splice_donor)# 0.4810265 
SAMN09691005.TAD.splice_donor<- matrix(c(2929,31658411,5776,42523218),nrow=2)
fisher.test(SAMN09691005.TAD.splice_donor)# 0.6811296
SAMN09691006.TAD.splice_donor<- matrix(c(4069,33246676,5776,42523218),nrow=2)
fisher.test(SAMN09691006.TAD.splice_donor)# 0.9009983 
SAMN09691007.TAD.splice_donor<- matrix(c(4261,31811382,5776,42523218),nrow=2)
fisher.test(SAMN09691007.TAD.splice_donor)# 0.9861152 
SAMN09691009.TAD.splice_donor<- matrix(c(3819,31337065,5776,42523218),nrow=2)
fisher.test(SAMN09691009.TAD.splice_donor)# 0.9861152 
SAMN09691010.TAD.splice_donor<- matrix(c(3948,32130740,5776,42523218),nrow=2)
fisher.test(SAMN09691010.TAD.splice_donor)# 0.904572
SAMN09691011.TAD.splice_donor<- matrix(c(3621,30330472,5776,42523218),nrow=2)
fisher.test(SAMN09691011.TAD.splice_donor)# 0.8789471
SAMN09691012.TAD.splice_donor<- matrix(c(3776,31455672,5776,42523218),nrow=2)
fisher.test(SAMN09691012.TAD.splice_donor)#  0.883783 
SAMN13676582.TAD.splice_donor <- matrix(c(3640,32008388,5776,42523218),nrow=2)
fisher.test(SAMN13676582.TAD.splice_donor)# 0.8372167 
SAMN14422843.TAD.splice_donor<- matrix(c(3314,29601200,5776,42523218),nrow=2)
fisher.test(SAMN14422843.TAD.splice_donor)# 0.8242277
SAMN15398106.TAD.splice_donor<- matrix(c(2291,27371413,5776,42523218),nrow=2)
fisher.test(SAMN15398106.TAD.splice_donor)# 0.616208 
SAMN15870115.TAD.splice_donor<- matrix(c(3059,29386841,5776,42523218),nrow=2)
fisher.test(SAMN15870115.TAD.splice_donor)# 0.7663475
SAMN15870116.TAD.splice_donor<- matrix(c(3477,30971752,5776,42523218),nrow=2)
fisher.test(SAMN15870116.TAD.splice_donor)# 0.8264936
SAMN15870117.TAD.splice_donor<- matrix(c(3402,31369307,5776,42523218),nrow=2)
fisher.test(SAMN15870117.TAD.splice_donor)# 0.7984148 
SAMN15870118.TAD.splice_donor<- matrix(c(3373,31442419,5776,42523218),nrow=2)
fisher.test(SAMN15870118.TAD.splice_donor)# 0.7897681 
SAMN15870119.TAD.splice_donor<- matrix(c(3246,30730437,5776,42523218),nrow=2)
fisher.test(SAMN15870119.TAD.splice_donor)# 0.7776407 
SAMN15870120.TAD.splice_donor<- matrix(c(3320,31121668,5776,42523218),nrow=2)
fisher.test(SAMN15870120.TAD.splice_donor)# 0.7853702 
##########splice_donor###################################################
##########TAD--splice-donor########
SAMEA7390796.TAD.splice_donor <- matrix(c(5555,31811382,10628,42523218),nrow=2)
fisher.test(SAMEA7390796.TAD.splice_donor)# 0.6986773 
SAMEA7390798.TAD.splice_donor <- matrix(c(5453,30736133,10628,42523218),nrow=2)
fisher.test(SAMEA7390798.TAD.splice_donor)# 0.7098413 
SAMEA7390799.TAD.splice_donor <- matrix(c(5195,29764701,10628,42523218),nrow=2)
fisher.test(SAMEA7390799.TAD.splice_donor)# 0.6983272 
SAMN09690999.TAD.splice_donor<- matrix(c(4822,30829313,10628,42523218),nrow=2)
fisher.test(SAMN09690999.TAD.splice_donor)# 0.6258048
SAMN09691000.TAD.splice_donor<- matrix(c(4374,29548293,10628,42523218),nrow=2)
fisher.test(SAMN09691000.TAD.splice_donor)# 0.5922731
SAMN09691001.TAD.splice_donor<- matrix(c(5187,32295472,10628,42523218),nrow=2)
fisher.test(SAMN09691001.TAD.splice_donor)# 0.6426135 
SAMN09691002.TAD.splice_donor<- matrix(c(4869,31572851,10628,42523218),nrow=2)
fisher.test(SAMN09691002.TAD.splice_donor)# 0.6170236 
SAMN09691004.TAD.splice_donor<- matrix(c(2452,23523630,10628,42523218),nrow=2)
fisher.test(SAMN09691004.TAD.splice_donor)# 0.4170531 
SAMN09691005.TAD.splice_donor<- matrix(c(5158,31658411,10628,42523218),nrow=2)
fisher.test(SAMN09691005.TAD.splice_donor)# 0.6518796
SAMN09691006.TAD.splice_donor<- matrix(c(7676,33246676,10628,42523218),nrow=2)
fisher.test(SAMN09691006.TAD.splice_donor)# 0.9237456
SAMN09691007.TAD.splice_donor<- matrix(c(7972,31811382,10628,42523218),nrow=2)
fisher.test(SAMN09691007.TAD.splice_donor)# 1.002673
SAMN09691009.TAD.splice_donor<- matrix(c(7222,31337065,10628,42523218),nrow=2)
fisher.test(SAMN09691009.TAD.splice_donor)# 0.9220743  
SAMN09691010.TAD.splice_donor<- matrix(c(7419,32130740,10628,42523218),nrow=2)
fisher.test(SAMN09691010.TAD.splice_donor)#  0.923828 
SAMN09691011.TAD.splice_donor<- matrix(c(6848,30330472,10628,42523218),nrow=2)
fisher.test(SAMN09691011.TAD.splice_donor)# 0.9033345
SAMN09691012.TAD.splice_donor<- matrix(c(7132,31455672,10628,42523218),nrow=2)
fisher.test(SAMN09691012.TAD.splice_donor)# 0.9071436 
SAMN13676582.TAD.splice_donor <- matrix(c(6822,32008388,10628,42523218),nrow=2)
fisher.test(SAMN13676582.TAD.splice_donor)# 0.852762 
SAMN14422843.TAD.splice_donor<- matrix(c(6310,29601200,10628,42523218),nrow=2)
fisher.test(SAMN14422843.TAD.splice_donor)# 0.8529143 
SAMN15398106.TAD.splice_donor<- matrix(c(4105,27371413,10628,42523218),nrow=2)
fisher.test(SAMN15398106.TAD.splice_donor)# 0.6000551 
SAMN15870115.TAD.splice_donor<- matrix(c(5810,29386841,10628,42523218),nrow=2)
fisher.test(SAMN15870115.TAD.splice_donor)# 0.6000551
SAMN15870116.TAD.splice_donor<- matrix(c(6449,30971752,10628,42523218),nrow=2)
fisher.test(SAMN15870116.TAD.splice_donor)#  0.8331139 
SAMN15870117.TAD.splice_donor<- matrix(c(6357,31369307,10628,42523218),nrow=2)
fisher.test(SAMN15870117.TAD.splice_donor)# 0.8108155 
SAMN15870118.TAD.splice_donor<- matrix(c(6317,31442419,10628,42523218),nrow=2)
fisher.test(SAMN15870118.TAD.splice_donor)# 0.8038402  
SAMN15870119.TAD.splice_donor<- matrix(c(6115,30730437,10628,42523218),nrow=2)
fisher.test(SAMN15870119.TAD.splice_donor)# 0.796164 
SAMN15870120.TAD.splice_donor<- matrix(c(6266,31121668,10628,42523218),nrow=2)
fisher.test(SAMN15870120.TAD.splice_donor)# 0.8055682 
#########tribleTAD--splice-donor##################
SAMEA7390796.trible.splice_donor <- matrix(c(10232,41914947,10628,42523218),nrow=2)
fisher.test(SAMEA7390796.trible.splice_donor)# 0.9767074 
SAMEA7390798.trible.splice_donor <- matrix(c(10184,41707959,10628,42523218),nrow=2)
fisher.test(SAMEA7390798.trible.splice_donor)# 0.9769501  
SAMEA7390799.trible.splice_donor <- matrix(c(9884,41205575,10628,42523218),nrow=2)
fisher.test(SAMEA7390799.trible.splice_donor)# 0.9597245 
SAMN09690999.trible.splice_donor<- matrix(c(9481,41102510,10628,42523218),nrow=2)
fisher.test(SAMN09690999.trible.splice_donor)# 0.9229386 
SAMN09691000.trible.splice_donor<- matrix(c(9439,40862752,10628,42523218),nrow=2)
fisher.test(SAMN09691000.trible.splice_donor)# 0.9242428  
SAMN09691001.trible.splice_donor<- matrix(c(9899,41737135,10628,42523218),nrow=2)
fisher.test(SAMN09691001.trible.splice_donor)# 0.9489329 
SAMN09691002.trible.splice_donor<- matrix(c(9439,41313306,10628,42523218),nrow=2)
fisher.test(SAMN09691002.trible.splice_donor)# 0.9141542
SAMN09691004.trible.splice_donor<- matrix(c(7169,37521521,10628,42523218),nrow=2)
fisher.test(SAMN09691004.trible.splice_donor)# 0.7644577  
SAMN09691005.trible.splice_donor<- matrix(c(9572,41335847,10628,42523218),nrow=2)
fisher.test(SAMN09691005.trible.splice_donor)# 0.9265394 
SAMN09691006.trible.splice_donor<- matrix(c(10396,42001307,10628,42523218),nrow=2)
fisher.test(SAMN09691006.trible.splice_donor)# 0.990325  
SAMN09691007.trible.splice_donor<- matrix(c(10395,42165246,10628,42523218),nrow=2)
fisher.test(SAMN09691007.trible.splice_donor)# 0.990325 
SAMN09691009.trible.splice_donor<- matrix(c(10305,41845280,10628,42523218),nrow=2)
fisher.test(SAMN09691009.trible.splice_donor)# 0.986379
SAMN09691010.trible.splice_donor<- matrix(c(10346,41845280,10628,42523218),nrow=2)
fisher.test(SAMN09691010.trible.splice_donor)# 0.9892367 
SAMN09691011.trible.splice_donor<- matrix(c(10243,41630647,10628,42523218),nrow=2)
fisher.test(SAMN09691011.trible.splice_donor)# 0.9844368
SAMN09691012.trible.splice_donor<- matrix(c(10468,41917395,10628,42523218),nrow=2)
fisher.test(SAMN09691012.trible.splice_donor)# 0.9991806
SAMN13676582.trible.splice_donor <- matrix(c(10277,41372556,10628,42523218),nrow=2)
fisher.test(SAMN13676582.trible.splice_donor)# 0.9938674 
SAMN14422843.trible.splice_donor<- matrix(c(9999,41592405,10628,42523218),nrow=2)
fisher.test(SAMN14422843.trible.splice_donor)# 0.9618619
SAMN15398106.trible.splice_donor<- matrix(c(9295,40438204,10628,42523218),nrow=2)
fisher.test(SAMN15398106.trible.splice_donor)# 0.9196955 
SAMN15870115.trible.splice_donor<- matrix(c(10096,41372556,10628,42523218),nrow=2)
fisher.test(SAMN15870115.trible.splice_donor)# 0.9763597
SAMN15870116.trible.splice_donor<- matrix(c(10243,41592405,10628,42523218),nrow=2)
fisher.test(SAMN15870116.trible.splice_donor)# 0.9853421 
SAMN15870117.trible.splice_donor<- matrix(c(10244,41835185,10628,42523218),nrow=2)
fisher.test(SAMN15870117.trible.splice_donor)# 0.9797182   
SAMN15870118.trible.splice_donor<- matrix(c(10302,41949981,10628,42523218),nrow=2)
fisher.test(SAMN15870118.trible.splice_donor)# 0.9825697
SAMN15870119.trible.splice_donor<- matrix(c(10157,41687906,10628,42523218),nrow=2)
fisher.test(SAMN15870119.trible.splice_donor)# 0.974828   
SAMN15870120.trible.splice_donor<- matrix(c(10175,41727916,10628,42523218),nrow=2)
fisher.test(SAMN15870120.trible.splice_donor)# 0.9756194 
data_stop_lost<-   read.csv("fig2.LOF.enrichment.stop_lost .csv",sep=",",header = T)
compare_means(value~region, data_stop_lost, method = "t.test", paired = T)

data= read.csv("E:\\Rlanguage\\Fig2.LOF.enrichment.csv",sep=",",header = T)
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

data <- data_summary(data_esQTL, varname="value", 
                     groupnames=c("type", "tissue"))

ggplot(data,aes(x=type,y=value,color=tissue))+
  geom_line() +
  geom_point()+
  geom_errorbar(aes(ymin=value-sd, ymax=value+sd), width=.2,
                position=position_dodge(0.4)) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45,hjust=1))+
  geom_hline(yintercept = 0.00,linetype="dashed")+
  scale_color_manual(values=c('#db520f','#f3d32c','#aaa26f'))
ggsave("fig2.LOF.enrichment.pdf",last_plot(),"pdf",width = 2,height = 2)



ggplot(data,aes(x=name,y=value))+
  stat_summary(fun.data=mean_cl_normal,aes(col=type,shape=name),geom="pointrange", size=1,stroke=1.5)+
  theme(legend.position = 'none')+theme(axis.text.x = element_text(angle = 45,hjust=1))+labs(y="log2Fold")+theme_classic()+
  scale_shape_manual(values=c(16))+scale_color_npg()
ggsave("fig2.LOF.enrichment.pdf",last_plot(),"pdf",width = 3,height = 3)

####TADflank--
#######TADflank-splice-donor#########################
SAMEA7390796.flank.splice_acceptor <- matrix(c(9544,39017518,10628,42523218),nrow=2)
fisher.test(SAMEA7390796.flank.splice_acceptor)# 0.9786878   
SAMEA7390798.flank.splice_acceptor <- matrix(c(9458,38411238,10628,42523218),nrow=2)
fisher.test(SAMEA7390798.flank.splice_acceptor)# 0.9851787 
SAMEA7390799.flank.splice_acceptor <- matrix(c(9055,37810315,10628,42523218),nrow=2)
fisher.test(SAMEA7390799.flank.splice_acceptor)# 0.9581834
SAMN09690999.flank.splice_acceptor<- matrix(c(8854,38392855,10628,42523218),nrow=2)
fisher.test(SAMN09690999.flank.splice_acceptor)# 0.9226777 
SAMN09691000.flank.splice_acceptor<- matrix(c(8717,37935049,10628,42523218),nrow=2)
fisher.test(SAMN09691000.flank.splice_acceptor)# 0.9193622 
SAMN09691001.flank.splice_acceptor<- matrix(c(9251,39236677,10628,42523218),nrow=2)
fisher.test(SAMN09691001.flank.splice_acceptor)# 0.9433285
SAMN09691002.flank.splice_acceptor<- matrix(c(8860,39062133,10628,42523218),nrow=2)
fisher.test(SAMN09691002.flank.splice_acceptor)# 0.9075313
SAMN09691004.flank.splice_acceptor<- matrix(c(6585,33077508,10628,42523218),nrow=2)
fisher.test(SAMN09691004.flank.splice_acceptor)# 0.7965222  
SAMN09691005.flank.splice_acceptor<- matrix(c(9016,39008553,10628,42523218),nrow=2)
fisher.test(SAMN09691005.flank.splice_acceptor)# 0.9247303  
SAMN09691006.flank.splice_acceptor<- matrix(c(9698,39815753,10628,42523218),nrow=2)
fisher.test(SAMN09691006.flank.splice_acceptor)# 0.9745408 
SAMN09691007.flank.splice_acceptor<- matrix(c(9698,39958339,10628,42523218),nrow=2)
fisher.test(SAMN09691007.flank.splice_acceptor)# 0.9845942 
SAMN09691009.flank.splice_acceptor<- matrix(c(9533,38804121,10628,42523218),nrow=2)
fisher.test(SAMN09691009.flank.splice_acceptor)# 0.9710621 
SAMN09691010.flank.splice_acceptor<- matrix(c(9660,39121905,10628,42523218),nrow=2)
fisher.test(SAMN09691010.flank.splice_acceptor)# 0.9879417
SAMN09691011.flank.splice_acceptor<- matrix(c(9205,38074181,10628,42523218),nrow=2)
fisher.test(SAMN09691011.flank.splice_acceptor)# 0.967309
SAMN09691012.flank.splice_acceptor<- matrix(c(9736,39076772,10628,42523218),nrow=2)
fisher.test(SAMN09691012.flank.splice_acceptor)# 0.9968652
SAMN13676582.flank.splice_acceptor <- matrix(c(9642,39884708,10628,42523218),nrow=2)
fisher.test(SAMN13676582.flank.splice_acceptor)# 0.9672358 
SAMN14422843.flank.splice_acceptor<- matrix(c(9085,38015090,10628,42523218),nrow=2)
fisher.test(SAMN14422843.flank.splice_acceptor)# 0.9561784
SAMN15398106.flank.splice_acceptor<- matrix(c(8664,37008128,10628,42523218),nrow=2)
fisher.test(SAMN15398106.flank.splice_acceptor)# 0.9366717 
SAMN15870115.flank.splice_acceptor<- matrix(c(9030,37619253,10628,42523218),nrow=2)
fisher.test(SAMN15870115.flank.splice_acceptor)# 0.960392
SAMN15870116.flank.splice_acceptor<- matrix(c(9462,38788384,10628,42523218),nrow=2)
fisher.test(SAMN15870116.flank.splice_acceptor)# 0.9760102 
SAMN15870117.flank.splice_acceptor<- matrix(c(9406,38845451,10628,42523218),nrow=2)
fisher.test(SAMN15870117.flank.splice_acceptor)# 0.9688062   
SAMN15870118.flank.splice_acceptor<- matrix(c(9501,39063914,10628,42523218),nrow=2)
fisher.test(SAMN15870118.flank.splice_acceptor)# 0.9731197  
SAMN15870119.flank.splice_acceptor<- matrix(c(9370,39013463,10628,42523218),nrow=2)
fisher.test(SAMN15870119.flank.splice_acceptor)#  0.9609389  
SAMN15870120.flank.splice_acceptor<- matrix(c(9391,38760110,10628,42523218),nrow=2)
fisher.test(SAMN15870120.flank.splice_acceptor)# 0.9693911 
#############################start_lost##############
####TAD--start_lost####
SAMEA7390796.TAD.start_lost <- matrix(c(1259,31811382,2310,42523218),nrow=2)
fisher.test(SAMEA7390796.TAD.start_lost)# 0.7285473 
SAMEA7390798.TAD.start_lost <- matrix(c(1234,30736133,2310,42523218),nrow=2)
fisher.test(SAMEA7390798.TAD.start_lost)# 0.7390612 
SAMEA7390799.TAD.start_lost <- matrix(c(1199,29764701,2310,42523218),nrow=2)
fisher.test(SAMEA7390799.TAD.start_lost)# 0.7415358
SAMN09690999.TAD.start_lost<- matrix(c(1146,30829313,2310,42523218),nrow=2)
fisher.test(SAMN09690999.TAD.start_lost)# 0.6842824
SAMN09691000.TAD.start_lost<- matrix(c(1072,29548293,2310,42523218),nrow=2)
fisher.test(SAMN09691000.TAD.start_lost)# 0.667847
SAMN09691001.TAD.start_lost<- matrix(c(1227,32295472,2310,42523218),nrow=2)
fisher.test(SAMN09691001.TAD.start_lost)#  0.6993871  
SAMN09691002.TAD.start_lost<- matrix(c(1135,31572851,2310,42523218),nrow=2)
fisher.test(SAMN09691002.TAD.start_lost)# 0.6617543 
SAMN09691004.TAD.start_lost<- matrix(c(713,23523630,2310,42523218),nrow=2)
fisher.test(SAMN09691004.TAD.start_lost)# 0.5579556
SAMN09691005.TAD.start_lost<- matrix(c(1240,31658411,2310,42523218),nrow=2)
fisher.test(SAMN09691005.TAD.start_lost)# 0.7210198
SAMN09691006.TAD.start_lost<- matrix(c(1683,33246676,2310,42523218),nrow=2)
fisher.test(SAMN09691006.TAD.start_lost)# 0.9318431 
SAMN09691007.TAD.start_lost<- matrix(c(1741,31811382,2310,42523218),nrow=2)
fisher.test(SAMN09691007.TAD.start_lost)# 1.007467
SAMN09691009.TAD.start_lost<- matrix(c(1559,31337065,2310,42523218),nrow=2)
fisher.test(SAMN09691009.TAD.start_lost)# 0.9157837 
SAMN09691010.TAD.start_lost<- matrix(c(1612,32130740,2310,42523218),nrow=2)
fisher.test(SAMN09691010.TAD.start_lost)# 0.9235285
SAMN09691011.TAD.start_lost<- matrix(c(1484,30330472,2310,42523218),nrow=2)
fisher.test(SAMN09691011.TAD.start_lost)# 0.9006536
SAMN09691012.TAD.start_lost<- matrix(c(1553,31455672,2310,42523218),nrow=2)
fisher.test(SAMN09691012.TAD.start_lost)#  0.9088162  
SAMN13676582.TAD.start_lost <- matrix(c(1460,32008388,2310,42523218),nrow=2)
fisher.test(SAMN13676582.TAD.start_lost)# 0.8396633 
SAMN14422843.TAD.start_lost<- matrix(c(1387,29601200,2310,42523218),nrow=2)
fisher.test(SAMN14422843.TAD.start_lost)#  0.8625691 
SAMN15398106.TAD.start_lost<- matrix(c(974,27371413,2310,42523218),nrow=2)
fisher.test(SAMN15398106.TAD.start_lost)# 0.6550526 
SAMN15870115.TAD.start_lost<- matrix(c(1307,29386841,2310,42523218),nrow=2)
fisher.test(SAMN15870115.TAD.start_lost)# 0.8187314
SAMN15870116.TAD.start_lost<- matrix(c(1437,30971752,2310,42523218),nrow=2)
fisher.test(SAMN15870116.TAD.start_lost)# 0.8541088
SAMN15870117.TAD.start_lost<- matrix(c(1422,31369307,2310,42523218),nrow=2)
fisher.test(SAMN15870117.TAD.start_lost)# 0.834471 
SAMN15870118.TAD.start_lost<- matrix(c(1439,31442419,2310,42523218),nrow=2)
fisher.test(SAMN15870118.TAD.start_lost)# 0.842487 
SAMN15870119.TAD.start_lost<- matrix(c(1370,30730437,2310,42523218),nrow=2)
fisher.test(SAMN15870119.TAD.start_lost)# 0.820667 
SAMN15870120.TAD.start_lost<- matrix(c(1413,31121668,2310,42523218),nrow=2)
fisher.test(SAMN15870120.TAD.start_lost)# 0.8357894 
####tribleTAD--start_lost####
SAMEA7390796.trible.start_lost <- matrix(c(2214,41914947,2310,42523218),nrow=2)
fisher.test(SAMEA7390796.trible.start_lost)# 0.9723451
SAMEA7390798.trible.start_lost <- matrix(c(2196,41707959,2310,42523218),nrow=2)
fisher.test(SAMEA7390798.trible.start_lost)# 0.969225   
SAMEA7390799.trible.start_lost <- matrix(c(2155,41205575,2310,42523218),nrow=2)
fisher.test(SAMEA7390799.trible.start_lost)# 0.962723 
SAMN09690999.trible.start_lost<- matrix(c(2080,41102510,2310,42523218),nrow=2)
fisher.test(SAMN09690999.trible.start_lost)# 0.9315284 
SAMN09691000.trible.start_lost<- matrix(c(2063,40862752,2310,42523218),nrow=2)
fisher.test(SAMN09691000.trible.start_lost)#  0.9293347  
SAMN09691001.trible.start_lost<- matrix(c(2185,41737135,2310,42523218),nrow=2)
fisher.test(SAMN09691001.trible.start_lost)# 0.9636935 
SAMN09691002.trible.start_lost<- matrix(c(2085,41313306,2310,42523218),nrow=2)
fisher.test(SAMN09691002.trible.start_lost)# 0.9290008
SAMN09691004.trible.start_lost<- matrix(c(1678,37521521,2310,42523218),nrow=2)
fisher.test(SAMN09691004.trible.start_lost)# 0.8232392  
SAMN09691005.trible.start_lost<- matrix(c(2115,41335847,2310,42523218),nrow=2)
fisher.test(SAMN09691005.trible.start_lost)# 0.9418635 
SAMN09691006.trible.start_lost<- matrix(c(2270,42001307,2310,42523218),nrow=2)
fisher.test(SAMN09691006.trible.start_lost)# 0.9948947 
SAMN09691007.trible.start_lost<- matrix(c(2270,42165246,2310,42523218),nrow=2)
fisher.test(SAMN09691007.trible.start_lost)# 0.9910261  
SAMN09691009.trible.start_lost<- matrix(c(2252,41845280,2310,42523218),nrow=2)
fisher.test(SAMN09691009.trible.start_lost)#  0.9906854 
SAMN09691010.trible.start_lost<- matrix(c(2268,41845280,2310,42523218),nrow=2)
fisher.test(SAMN09691010.trible.start_lost)# 0.9977246 
SAMN09691011.trible.start_lost<- matrix(c(2234,41630647,2310,42523218),nrow=2)
fisher.test(SAMN09691011.trible.start_lost)# 0.9878333 
SAMN09691012.trible.start_lost<- matrix(c(2276,41917395,2310,42523218),nrow=2)
fisher.test(SAMN09691012.trible.start_lost)#  0.9995193
SAMN13676582.trible.start_lost <- matrix(c(2233,41372556,2310,42523218),nrow=2)
fisher.test(SAMN13676582.trible.start_lost)# 0.9935515
SAMN14422843.trible.start_lost<- matrix(c(2176,41592405,2310,42523218),nrow=2)
fisher.test(SAMN14422843.trible.start_lost)# 0.9630634
SAMN15398106.trible.start_lost<- matrix(c(2050,40438204,2310,42523218),nrow=2)
fisher.test(SAMN15398106.trible.start_lost)# 0.9331774 
SAMN15870115.trible.start_lost<- matrix(c(2193,41372556,2310,42523218),nrow=2)
fisher.test(SAMN15870115.trible.start_lost)# 0.9757502
SAMN15870116.trible.start_lost<- matrix(c(2220,41592405,2310,42523218),nrow=2)
fisher.test(SAMN15870116.trible.start_lost)# 0.9825443 
SAMN15870117.trible.start_lost<- matrix(c(2226,41949981,2310,42523218),nrow=2)
fisher.test(SAMN15870117.trible.start_lost)# 0.9768004     
SAMN15870118.trible.start_lost<- matrix(c(2229,41949981,2310,42523218),nrow=2)
fisher.test(SAMN15870118.trible.start_lost)# 0.9781173
SAMN15870119.trible.start_lost<- matrix(c(2198,41687906,2310,42523218),nrow=2)
fisher.test(SAMN15870119.trible.start_lost)# 0.970575    
SAMN15870120.trible.start_lost<- matrix(c(2218,41727916,2310,42523218),nrow=2)
fisher.test(SAMN15870120.trible.start_lost)# 0.9784701


###TADflank--start-lost##########
SAMEA7390796.flank.start_lost  <- matrix(c(2062,39017518,2310,42523218),nrow=2)
fisher.test(SAMEA7390796.flank.start_lost )# 0.9728396 
SAMEA7390798.flank.start_lost  <- matrix(c(2037,38411238,2310,42523218),nrow=2)
fisher.test(SAMEA7390798.flank.start_lost )# 0.9762149 
SAMEA7390799.flank.start_lost  <- matrix(c(1989,37810315,2310,42523218),nrow=2)
fisher.test(SAMEA7390799.flank.start_lost )# 0.9683587
SAMN09690999.flank.start_lost <- matrix(c(1931,38392855,2310,42523218),nrow=2)
fisher.test(SAMN09690999.flank.start_lost )# 0.9258345 
SAMN09691000.flank.start_lost <- matrix(c(1885,37935049,2310,42523218),nrow=2)
fisher.test(SAMN09691000.flank.start_lost )# 0.9147406 
SAMN09691001.flank.start_lost <- matrix(c(2037,39236677,2310,42523218),nrow=2)
fisher.test(SAMN09691001.flank.start_lost )# 0.9556699
SAMN09691002.flank.start_lost <- matrix(c(1958,39062133,2310,42523218),nrow=2)
fisher.test(SAMN09691002.flank.start_lost )# 0.9226916
SAMN09691004.flank.start_lost <- matrix(c(1508,33077508,2310,42523218),nrow=2)
fisher.test(SAMN09691004.flank.start_lost )# 0.8392336  
SAMN09691005.flank.start_lost <- matrix(c(1967,39008553,2310,42523218),nrow=2)
fisher.test(SAMN09691005.flank.start_lost )# 0.92821
SAMN09691006.flank.start_lost <- matrix(c(2123,39815753,2310,42523218),nrow=2)
fisher.test(SAMN09691006.flank.start_lost )# 0.9815406 
SAMN09691007.flank.start_lost <- matrix(c(2124,39958339,2310,42523218),nrow=2)
fisher.test(SAMN09691007.flank.start_lost )# 0.978498  
SAMN09691009.flank.start_lost <- matrix(c(2075,38804121,2310,42523218),nrow=2)
fisher.test(SAMN09691009.flank.start_lost )# 0.9843595
SAMN09691010.flank.start_lost <- matrix(c(2105,39121905,2310,42523218),nrow=2)
fisher.test(SAMN09691010.flank.start_lost )# 0.9904807
SAMN09691011.flank.start_lost <- matrix(c(2015,38074181,2310,42523218),nrow=2)
fisher.test(SAMN09691011.flank.start_lost )# 0.9742199
SAMN09691012.flank.start_lost <- matrix(c(2098,39076772,2310,42523218),nrow=2)
fisher.test(SAMN09691012.flank.start_lost )#  0.9883268
SAMN13676582.flank.start_lost  <- matrix(c(2118,39884708,2310,42523218),nrow=2)
fisher.test(SAMN13676582.flank.start_lost )# 0.9775349  
SAMN14422843.flank.start_lost <- matrix(c(1983,38015090,2310,42523218),nrow=2)
fisher.test(SAMN14422843.flank.start_lost )# 0.960234
SAMN15398106.flank.start_lost <- matrix(c(1891,37008128,2310,42523218),nrow=2)
fisher.test(SAMN15398106.flank.start_lost )# 0.9405914
SAMN15870115.flank.start_lost <- matrix(c(1974,37619253,2310,42523218),nrow=2)
fisher.test(SAMN15870115.flank.start_lost )# 0.9659361
SAMN15870116.flank.start_lost <- matrix(c(2048,38788384,2310,42523218),nrow=2)
fisher.test(SAMN15870116.flank.start_lost )# 0.9719421 
SAMN15870117.flank.start_lost <- matrix(c(2034,38845451,2310,42523218),nrow=2)
fisher.test(SAMN15870117.flank.start_lost )# 0.963877   
SAMN15870118.flank.start_lost <- matrix(c(2051,39063914,2310,42523218),nrow=2)
fisher.test(SAMN15870118.flank.start_lost )# 0.9664984 
SAMN15870119.flank.start_lost <- matrix(c(2021,39013463,2310,42523218),nrow=2)
fisher.test(SAMN15870119.flank.start_lost )#  0.9535874  
SAMN15870120.flank.start_lost <- matrix(c(2048,38760110,2310,42523218),nrow=2)
fisher.test(SAMN15870120.flank.start_lost )# 0.9726513 
######stop_gained#########
########TAD--stop_gained######
SAMEA7390796.TAD.stop_gained <- matrix(c(4495,31811382,8434,42523218),nrow=2)
fisher.test(SAMEA7390796.TAD.stop_gained)#0.7124267  
SAMEA7390798.TAD.stop_gained <- matrix(c(4309,30736133,8434,42523218),nrow=2)
fisher.test(SAMEA7390798.TAD.stop_gained)# 0.7068385 
SAMEA7390799.TAD.stop_gained <- matrix(c(4203,29764701,8434,42523218),nrow=2)
fisher.test(SAMEA7390799.TAD.stop_gained)# 0.711952
SAMN09690999.TAD.stop_gained<- matrix(c(3933,30829313,8434,42523218),nrow=2)
fisher.test(SAMN09690999.TAD.stop_gained)#0.6432109
SAMN09691000.TAD.stop_gained<- matrix(c(3479,29548293,8434,42523218),nrow=2)
fisher.test(SAMN09691000.TAD.stop_gained)#0.5936296 
SAMN09691001.TAD.stop_gained<- matrix(c(4197,32295472,8434,42523218),nrow=2)
fisher.test(SAMN09691001.TAD.stop_gained)#  0.6552251   
SAMN09691002.TAD.stop_gained<- matrix(c(3936,31572851,8434,42523218),nrow=2)
fisher.test(SAMN09691002.TAD.stop_gained)# 0.6285428  
SAMN09691004.TAD.stop_gained<- matrix(c(2110,23523630,8434,42523218),nrow=2)
fisher.test(SAMN09691004.TAD.stop_gained)# 0.4522424 
SAMN09691005.TAD.stop_gained<- matrix(c(4238,31658411,8434,42523218),nrow=2)
fisher.test(SAMN09691005.TAD.stop_gained)# 0.6749396 
SAMN09691006.TAD.stop_gained<- matrix(c(6036,33246676,8434,42523218),nrow=2)
fisher.test(SAMN09691006.TAD.stop_gained)# 0.9153405 
SAMN09691007.TAD.stop_gained<- matrix(c(6291,31811382,8434,42523218),nrow=2)
fisher.test(SAMN09691007.TAD.stop_gained)# 0.9970792
SAMN09691009.TAD.stop_gained<- matrix(c(5628,31337065,8434,42523218),nrow=2)
fisher.test(SAMN09691009.TAD.stop_gained)# 0.9054764
SAMN09691010.TAD.stop_gained<- matrix(c(5815,32130740,8434,42523218),nrow=2)
fisher.test(SAMN09691010.TAD.stop_gained)#  0.9124542 
SAMN09691011.TAD.stop_gained<- matrix(c(5240,30330472,8434,42523218),nrow=2)
fisher.test(SAMN09691011.TAD.stop_gained)# 0.8710791 
SAMN09691012.TAD.stop_gained<- matrix(c(5612,31455672,8434,42523218),nrow=2)
fisher.test(SAMN09691012.TAD.stop_gained)#  0.8994947   
SAMN13676582.TAD.stop_gained <- matrix(c(5261,32008388,8434,42523218),nrow=2)
fisher.test(SAMN13676582.TAD.stop_gained)# 0.8286997
SAMN14422843.TAD.stop_gained<- matrix(c(4911,29601200,8434,42523218),nrow=2)
fisher.test(SAMN14422843.TAD.stop_gained)#   0.8364899  
SAMN15398106.TAD.stop_gained<- matrix(c(3284,27371413,8434,42523218),nrow=2)
fisher.test(SAMN15398106.TAD.stop_gained)# 0.6049215
SAMN15870115.TAD.stop_gained<- matrix(c(4474,29386841,8434,42523218),nrow=2)
fisher.test(SAMN15870115.TAD.stop_gained)# 0.7676015 
SAMN15870116.TAD.stop_gained<- matrix(c(5014,30971752,8434,42523218),nrow=2)
fisher.test(SAMN15870116.TAD.stop_gained)# 0.8162276
SAMN15870117.TAD.stop_gained<- matrix(c(4995,31369307,8434,42523218),nrow=2)
fisher.test(SAMN15870117.TAD.stop_gained)# 0.8028295 
SAMN15870118.TAD.stop_gained<- matrix(c(4907,31442419,8434,42523218),nrow=2)
fisher.test(SAMN15870118.TAD.stop_gained)# 0.842487 
SAMN15870119.TAD.stop_gained<- matrix(c(4749,30730437,8434,42523218),nrow=2)
fisher.test(SAMN15870119.TAD.stop_gained)# 0.7868517 
SAMN15870120.TAD.stop_gained<- matrix(c(4842,31121668,8434,42523218),nrow=2)
fisher.test(SAMN15870120.TAD.stop_gained)# 0.7844309 

###trible--
###trible--stop_gained#######
SAMEA7390796.trible.stop_gained <- matrix(c(8129,41914947,8434,42523218),nrow=2)
fisher.test(SAMEA7390796.trible.stop_gained)# 0.9778206 
SAMEA7390798.trible.stop_gained <- matrix(c(8083,41707959,8434,42523218),nrow=2)
fisher.test(SAMEA7390798.trible.stop_gained)# 0.9771124   
SAMEA7390799.trible.stop_gained <- matrix(c(7895,41205575,8434,42523218),nrow=2)
fisher.test(SAMEA7390799.trible.stop_gained)#  0.9660181 
SAMN09690999.trible.stop_gained<- matrix(c(7672,41102510,8434,42523218),nrow=2)
fisher.test(SAMN09690999.trible.stop_gained)# 0.9410722 
SAMN09691000.trible.stop_gained<- matrix(c(7613,40862752,8434,42523218),nrow=2)
fisher.test(SAMN09691000.trible.stop_gained)# 0.9393134  
SAMN09691001.trible.stop_gained<- matrix(c(7951,41737135,8434,42523218),nrow=2)
fisher.test(SAMN09691001.trible.stop_gained)# 0.9604768 
SAMN09691002.trible.stop_gained<- matrix(c(7635,41313306,8434,42523218),nrow=2)
fisher.test(SAMN09691002.trible.stop_gained)# 0.931748 
SAMN09691004.trible.stop_gained<- matrix(c(5924,37521521,8434,42523218),nrow=2)
fisher.test(SAMN09691004.trible.stop_gained)# 0.7960268 
SAMN09691005.trible.stop_gained<- matrix(c(7693,41335847,8434,42523218),nrow=2)
fisher.test(SAMN09691005.trible.stop_gained)# 0.9383191 
SAMN09691006.trible.stop_gained<- matrix(c(8287,42001307,8434,42523218),nrow=2)
fisher.test(SAMN09691006.trible.stop_gained)# 0.9947798   
SAMN09691007.trible.stop_gained<- matrix(c(8272,42165246,8434,42523218),nrow=2)
fisher.test(SAMN09691007.trible.stop_gained)# 0.9891178 
SAMN09691009.trible.stop_gained<- matrix(c(8206,41753467,8434,42523218),nrow=2)
fisher.test(SAMN09691009.trible.stop_gained)# 0.9909032
SAMN09691010.trible.stop_gained<- matrix(c(8225,41845280,8434,42523218),nrow=2)
fisher.test(SAMN09691010.trible.stop_gained)# 0.9910183 
SAMN09691011.trible.stop_gained<- matrix(c(8109,41630647,8434,42523218),nrow=2)
fisher.test(SAMN09691011.trible.stop_gained)#  0.9820773
SAMN09691012.trible.stop_gained<- matrix(c(8318,41917395,8434,42523218),nrow=2)
fisher.test(SAMN09691012.trible.stop_gained)# 1.0005 
SAMN13676582.trible.stop_gained <- matrix(c(8189,41372556,8434,42523218),nrow=2)
fisher.test(SAMN13676582.trible.stop_gained)#0.9979552 
SAMN14422843.trible.stop_gained<- matrix(c(8018,41592405,8434,42523218),nrow=2)
fisher.test(SAMN14422843.trible.stop_gained)# 0.971946 
SAMN15398106.trible.stop_gained<- matrix(c(7495,40438204,8434,42523218),nrow=2)
fisher.test(SAMN15398106.trible.stop_gained)# 0.9344602 
SAMN15870115.trible.stop_gained<- matrix(c(8050,41372556,8434,42523218),nrow=2)
fisher.test(SAMN15870115.trible.stop_gained)# 0.9810134
SAMN15870116.trible.stop_gained<- matrix(c(8091,41592405,8434,42523218),nrow=2)
fisher.test(SAMN15870116.trible.stop_gained)# 0.9807979 
SAMN15870117.trible.stop_gained<- matrix(c(8168,41835185,8434,42523218),nrow=2)
fisher.test(SAMN15870117.trible.stop_gained)# 0.9843868   
SAMN15870118.trible.stop_gained<- matrix(c(8172,41949981,8434,42523218),nrow=2)
fisher.test(SAMN15870118.trible.stop_gained)# 0.9821733   
SAMN15870119.trible.stop_gained<- matrix(c(8034,41687906,8434,42523218),nrow=2)
fisher.test(SAMN15870119.trible.stop_gained)# 0.9716543    
SAMN15870120.trible.stop_gained<- matrix(c(8086,41727916,8434,42523218),nrow=2)
fisher.test(SAMN15870120.trible.stop_gained)# 0.9770075

###TADflank--stop_gained##########
SAMEA7390796.flank.stop_gained  <- matrix(c(7625,39017518,8434,42523218),nrow=2)
fisher.test(SAMEA7390796.flank.stop_gained )# 0.9853083   
SAMEA7390798.flank.stop_gained  <- matrix(c(7580,38411238,8434,42523218),nrow=2)
fisher.test(SAMEA7390798.flank.stop_gained )#0.9949548 
SAMEA7390799.flank.stop_gained  <- matrix(c(7328,37810315,8434,42523218),nrow=2)
fisher.test(SAMEA7390799.flank.stop_gained )# 0.9771617
SAMN09690999.flank.stop_gained <- matrix(c(7200,38392855,8434,42523218),nrow=2)
fisher.test(SAMN09690999.flank.stop_gained )# 0.9455131
SAMN09691000.flank.stop_gained <- matrix(c(7099,37935049,8434,42523218),nrow=2)
fisher.test(SAMN09691000.flank.stop_gained )# 0.9434996 
SAMN09691001.flank.stop_gained <- matrix(c(7487,39236677,8434,42523218),nrow=2)
fisher.test(SAMN09691001.flank.stop_gained )# 0.962065
SAMN09691002.flank.stop_gained <- matrix(c(7234,39062133,8434,42523218),nrow=2)
fisher.test(SAMN09691002.flank.stop_gained )# 0.9336935
SAMN09691004.flank.stop_gained <- matrix(c(5469,33077508,8434,42523218),nrow=2)
fisher.test(SAMN09691004.flank.stop_gained )# 0.8336195 
SAMN09691005.flank.stop_gained <- matrix(c(7305,39008553,8434,42523218),nrow=2)
fisher.test(SAMN09691005.flank.stop_gained )# 0.9441591 
SAMN09691006.flank.stop_gained <- matrix(c(7816,39815753,8434,42523218),nrow=2)
fisher.test(SAMN09691006.flank.stop_gained )# 0.9897416 
SAMN09691007.flank.stop_gained <- matrix(c(7822,39958339,8434,42523218),nrow=2)
fisher.test(SAMN09691007.flank.stop_gained )# 0.9869665 
SAMN09691009.flank.stop_gained <- matrix(c(7651,38804121,8434,42523218),nrow=2)
fisher.test(SAMN09691009.flank.stop_gained )# 0.9941062 
SAMN09691010.flank.stop_gained <- matrix(c(7757,39121905,8434,42523218),nrow=2)
fisher.test(SAMN09691010.flank.stop_gained )# 0.9996665 
SAMN09691011.flank.stop_gained <- matrix(c(7442,38074181,8434,42523218),nrow=2)
fisher.test(SAMN09691011.flank.stop_gained )# 0.9854874
SAMN09691012.flank.stop_gained <- matrix(c(7820,39076772,8434,42523218),nrow=2)
fisher.test(SAMN09691012.flank.stop_gained )#  1.008976 
SAMN13676582.flank.stop_gained  <- matrix(c(7762,39884708,8434,42523218),nrow=2)
fisher.test(SAMN13676582.flank.stop_gained )# 0.9812028 
SAMN14422843.flank.stop_gained <- matrix(c(7401,38015090,8434,42523218),nrow=2)
fisher.test(SAMN14422843.flank.stop_gained )# 0.9815808 
SAMN15398106.flank.stop_gained <- matrix(c(7035,37008128,8434,42523218),nrow=2)
fisher.test(SAMN15398106.flank.stop_gained )# 0.9584196 
SAMN15870115.flank.stop_gained <- matrix(c(7280,37619253,8434,42523218),nrow=2)
fisher.test(SAMN15870115.flank.stop_gained )# 0.9756911
SAMN15870116.flank.stop_gained <- matrix(c(7535,38788384,8434,42523218),nrow=2)
fisher.test(SAMN15870116.flank.stop_gained )# 0.9794291
SAMN15870117.flank.stop_gained <- matrix(c(7587,38845451,8434,42523218),nrow=2)
fisher.test(SAMN15870117.flank.stop_gained )# 0.9847406   
SAMN15870118.flank.stop_gained <- matrix(c(7630,39063914,8434,42523218),nrow=2)
fisher.test(SAMN15870118.flank.stop_gained )# 0.9847833  
SAMN15870119.flank.stop_gained <- matrix(c(7475,39013463,8434,42523218),nrow=2)
fisher.test(SAMN15870119.flank.stop_gained )#  0.9660203 
SAMN15870120.flank.stop_gained <- matrix(c(7534,38760110,8434,42523218),nrow=2)
fisher.test(SAMN15870120.flank.stop_gained )# 0.9800136 
######stop_lost#######################
###TAD--stop_lost####
SAMEA7390796.TAD.stop_lost <- matrix(c(11,31811382,19,42523218),nrow=2)
fisher.test(SAMEA7390796.TAD.stop_lost)# 0.7738967  
SAMEA7390798.TAD.stop_lost <- matrix(c(11,30736133,19,42523218),nrow=2)
fisher.test(SAMEA7390798.TAD.stop_lost)#  0.8009699
SAMEA7390799.TAD.stop_lost <- matrix(c(9,29764701,19,42523218),nrow=2)
fisher.test(SAMEA7390799.TAD.stop_lost)# 0.6767276 
SAMN09690999.TAD.stop_lost<- matrix(c(9,30829313,19,42523218),nrow=2)
fisher.test(SAMN09690999.TAD.stop_lost)#  0.653359 
SAMN09691000.TAD.stop_lost<- matrix(c(6,29548293,19,42523218),nrow=2)
fisher.test(SAMN09691000.TAD.stop_lost)# 0.4544585 
SAMN09691001.TAD.stop_lost<- matrix(c(12,32295472,19,42523218),nrow=2)
fisher.test(SAMN09691001.TAD.stop_lost)# 0.8315958 
SAMN09691002.TAD.stop_lost<- matrix(c(10,31572851,19,42523218),nrow=2)
fisher.test(SAMN09691002.TAD.stop_lost)#0.7088579  
SAMN09691004.TAD.stop_lost<- matrix(c(5,23523630,19,42523218),nrow=2)
fisher.test(SAMN09691004.TAD.stop_lost)# 0.49513842 
SAMN09691005.TAD.stop_lost<- matrix(c(10,31658411,19,42523218),nrow=2)
fisher.test(SAMN09691005.TAD.stop_lost)# 0.7069422
SAMN09691006.TAD.stop_lost<- matrix(c(13,33246676,19,42523218),nrow=2)
fisher.test(SAMN09691006.TAD.stop_lost)#0.8751374 
SAMN09691007.TAD.stop_lost<- matrix(c(15,31811382,19,42523218),nrow=2)
fisher.test(SAMN09691007.TAD.stop_lost)# 1.055286
SAMN09691009.TAD.stop_lost<- matrix(c(13,31337065,19,42523218),nrow=2)
fisher.test(SAMN09691009.TAD.stop_lost)#0.9284336   
SAMN09691010.TAD.stop_lost<- matrix(c(12,32130740,19,42523218),nrow=2)
fisher.test(SAMN09691010.TAD.stop_lost)#  0.8358603  
SAMN09691011.TAD.stop_lost<- matrix(c(13,30330472,19,42523218),nrow=2)
fisher.test(SAMN09691011.TAD.stop_lost)# 0.9592562 
SAMN09691012.TAD.stop_lost<- matrix(c(12,31455672,19,42523218),nrow=2)
fisher.test(SAMN09691012.TAD.stop_lost)# 0.853811  
SAMN13676582.TAD.stop_lost <- matrix(c(14,32008388,19,42523218),nrow=2)
fisher.test(SAMN13676582.TAD.stop_lost)#  0.9788949 
SAMN14422843.TAD.stop_lost<- matrix(c(12,29601200,19,42523218),nrow=2)
fisher.test(SAMN14422843.TAD.stop_lost)#  0.9072675  
SAMN15398106.TAD.stop_lost<- matrix(c(6,27371413,19,42523218),nrow=2)
fisher.test(SAMN15398106.TAD.stop_lost)# 0.4906005  
SAMN15870115.TAD.stop_lost<- matrix(c(9,29386841,19,42523218),nrow=2)
fisher.test(SAMN15870115.TAD.stop_lost)# 0.7910392
SAMN15870116.TAD.stop_lost<- matrix(c(10,30971752,19,42523218),nrow=2)
fisher.test(SAMN15870116.TAD.stop_lost)#  0.685429 
SAMN15870117.TAD.stop_lost<- matrix(c(9,31369307,19,42523218),nrow=2)
fisher.test(SAMN15870117.TAD.stop_lost)# 0.6421119 
SAMN15870118.TAD.stop_lost<- matrix(c(10,31442419,19,42523218),nrow=2)
fisher.test(SAMN15870118.TAD.stop_lost)# 0.7117984  
SAMN15870119.TAD.stop_lost<- matrix(c(11,30730437,19,42523218),nrow=2)
fisher.test(SAMN15870119.TAD.stop_lost)#0.8011183 
SAMN15870120.TAD.stop_lost<- matrix(c(9,31121668,19,42523218),nrow=2)
fisher.test(SAMN15870120.TAD.stop_lost)# 0.6472212

##tribleTAD--stop_lost#####
SAMEA7390796.trible.stop_lost <- matrix(c(19,41914947,19,42523218),nrow=2)
fisher.test(SAMEA7390796.trible.stop_lost)# 1.014514 
SAMEA7390798.trible.stop_lost <- matrix(c(19,41707959,19,42523218),nrow=2)
fisher.test(SAMEA7390798.trible.stop_lost)# 1.01955  
SAMEA7390799.trible.stop_lost <- matrix(c(18,41205575,19,42523218),nrow=2)
fisher.test(SAMEA7390799.trible.stop_lost)# 0.9776593 
SAMN09690999.trible.stop_lost<- matrix(c(17,41102510,19,42523218),nrow=2)
fisher.test(SAMN09690999.trible.stop_lost)# 0.925692  
SAMN09691000.trible.stop_lost<- matrix(c(15,40862752,19,42523218),nrow=2)
fisher.test(SAMN09691000.trible.stop_lost)# 0.8215552  
SAMN09691001.trible.stop_lost<- matrix(c(18,41737135,19,42523218),nrow=2)
fisher.test(SAMN09691001.trible.stop_lost)# 0.965203 
SAMN09691002.trible.stop_lost<- matrix(c(17,41313306,19,42523218),nrow=2)
fisher.test(SAMN09691002.trible.stop_lost)# 0.9209647
SAMN09691004.trible.stop_lost<- matrix(c(10,37521521,19,42523218),nrow=2)
fisher.test(SAMN09691004.trible.stop_lost)# 0.5964769  
SAMN09691005.trible.stop_lost<- matrix(c(17,41335847,19,42523218),nrow=2)
fisher.test(SAMN09691005.trible.stop_lost)# 0.920462  
SAMN09691006.trible.stop_lost<- matrix(c(19,42001307,19,42523218),nrow=2)
fisher.test(SAMN09691006.trible.stop_lost)# 1.012427   
SAMN09691007.trible.stop_lost<- matrix(c(19,42165246,19,42523218),nrow=2)
fisher.test(SAMN09691007.trible.stop_lost)#  1.00849 
SAMN09691009.trible.stop_lost<- matrix(c(19,41753467,19,42523218),nrow=2)
fisher.test(SAMN09691009.trible.stop_lost)# 1.018438
SAMN09691010.trible.stop_lost<- matrix(c(19,41845280,19,42523218),nrow=2)
fisher.test(SAMN09691010.trible.stop_lost)# 1.016203 
SAMN09691011.trible.stop_lost<- matrix(c(19,41630647,19,42523218),nrow=2)
fisher.test(SAMN09691011.trible.stop_lost)#  1.021444 
SAMN09691012.trible.stop_lost<- matrix(c(19,41917395,19,42523218),nrow=2)
fisher.test(SAMN09691012.trible.stop_lost)#  1.014454 
SAMN13676582.trible.stop_lost <- matrix(c(19,41372556,19,42523218),nrow=2)
fisher.test(SAMN13676582.trible.stop_lost)# 1.027818 
SAMN14422843.trible.stop_lost<- matrix(c(17,41592405,19,42523218),nrow=2)
fisher.test(SAMN14422843.trible.stop_lost)# 0.8301803  
SAMN15398106.trible.stop_lost<- matrix(c(15,40438204,19,42523218),nrow=2)
fisher.test(SAMN15398106.trible.stop_lost)# 0.8301803 
SAMN15870115.trible.stop_lost<- matrix(c(19,41372556,19,42523218),nrow=2)
fisher.test(SAMN15870115.trible.stop_lost)#  1.027818  
SAMN15870116.trible.stop_lost<- matrix(c(19,41592405,19,42523218),nrow=2)
fisher.test(SAMN15870116.trible.stop_lost)# 1.022383  
SAMN15870117.trible.stop_lost<- matrix(c(19,41835185,19,42523218),nrow=2)
fisher.test(SAMN15870117.trible.stop_lost)#  1.016448   
SAMN15870118.trible.stop_lost<- matrix(c(19,41949981,19,42523218),nrow=2)
fisher.test(SAMN15870118.trible.stop_lost)# 1.013666
SAMN15870119.trible.stop_lost<- matrix(c(18,41687906,19,42523218),nrow=2)
fisher.test(SAMN15870119.trible.stop_lost)# 0.9663434    
SAMN15870120.trible.stop_lost<- matrix(c(19,41727916,19,42523218),nrow=2)
fisher.test(SAMN15870120.trible.stop_lost)#  1.019062 

####TADflank-stro_lost###########
SAMEA7390796.flank.stop_lost  <- matrix(c(17,39017518,19,42523218),nrow=2)
fisher.test(SAMEA7390796.flank.stop_lost )# 0.9751248   
SAMEA7390798.flank.stop_lost  <- matrix(c(18,38411238,19,42523218),nrow=2)
fisher.test(SAMEA7390798.flank.stop_lost )#  1.048807 
SAMEA7390799.flank.stop_lost  <- matrix(c(17,37810315,19,42523218),nrow=2)
fisher.test(SAMEA7390799.flank.stop_lost )# 1.006263 
SAMN09690999.flank.stop_lost <- matrix(c(17,38392855,19,42523218),nrow=2)
fisher.test(SAMN09690999.flank.stop_lost )# 0.9909935
SAMN09691000.flank.stop_lost <- matrix(c(14,37935049,19,42523218),nrow=2)
fisher.test(SAMN09691000.flank.stop_lost )# 0.8259625 
SAMN09691001.flank.stop_lost <- matrix(c(17,39236677,19,42523218),nrow=2)
fisher.test(SAMN09691001.flank.stop_lost )# 0.9696764
SAMN09691002.flank.stop_lost <- matrix(c(16,39062133,19,42523218),nrow=2)
fisher.test(SAMN09691002.flank.stop_lost )# 0.916746
SAMN09691004.flank.stop_lost <- matrix(c(10,33077508,19,42523218),nrow=2)
fisher.test(SAMN09691004.flank.stop_lost )# 0.6766131  
SAMN09691005.flank.stop_lost <- matrix(c(16,39008553,19,42523218),nrow=2)
fisher.test(SAMN09691005.flank.stop_lost )# 0.9180062 
SAMN09691006.flank.stop_lost <- matrix(c(16,39815753,19,42523218),nrow=2)
fisher.test(SAMN09691006.flank.stop_lost )# 0.8993787 
SAMN09691007.flank.stop_lost <- matrix(c(16,39958339,19,42523218),nrow=2)
fisher.test(SAMN09691007.flank.stop_lost )#  0.8961662  
SAMN09691009.flank.stop_lost <- matrix(c(18,38804121,19,42523218),nrow=2)
fisher.test(SAMN09691009.flank.stop_lost )# 1.03818
SAMN09691010.flank.stop_lost <- matrix(c(18,39121905,19,42523218),nrow=2)
fisher.test(SAMN09691010.flank.stop_lost )# 1.029742
SAMN09691011.flank.stop_lost <- matrix(c(18,38074181,19,42523218),nrow=2)
fisher.test(SAMN09691011.flank.stop_lost )# 1.0581
SAMN09691012.flank.stop_lost <- matrix(c(19,39076772,19,42523218),nrow=2)
fisher.test(SAMN09691012.flank.stop_lost )# 1.088185
SAMN13676582.flank.stop_lost  <- matrix(c(18,39884708,19,42523218),nrow=2)
fisher.test(SAMN13676582.flank.stop_lost )# 1.010041 
SAMN14422843.flank.stop_lost <- matrix(c(14,38015090,19,42523218),nrow=2)
fisher.test(SAMN14422843.flank.stop_lost )# 0.8242234
SAMN15398106.flank.stop_lost <- matrix(c(15,37008128,19,42523218),nrow=2)
fisher.test(SAMN15398106.flank.stop_lost )# 0.9071488 
SAMN15870115.flank.stop_lost <- matrix(c(16,37619253,19,42523218),nrow=2)
fisher.test(SAMN15870115.flank.stop_lost )# 0.9518687
SAMN15870116.flank.stop_lost <- matrix(c(16,38788384,19,42523218),nrow=2)
fisher.test(SAMN15870116.flank.stop_lost )# 0.9231599 
SAMN15870117.flank.stop_lost <- matrix(c(16,38845451,19,42523218),nrow=2)
fisher.test(SAMN15870117.flank.stop_lost )# 0.9218637  
SAMN15870118.flank.stop_lost <- matrix(c(16,39063914,19,42523218),nrow=2)
fisher.test(SAMN15870118.flank.stop_lost )# 0.9167042
SAMN15870119.flank.stop_lost <- matrix(c(15,39013463,19,42523218),nrow=2)
fisher.test(SAMN15870119.flank.stop_lost )# 0.8604974  
SAMN15870120.flank.stop_lost <- matrix(c(16,38760110,19,42523218),nrow=2)
fisher.test(SAMN15870120.flank.stop_lost )# 0.9238338  


data_LOF= read.csv("E:\\Rlanguage\\fig2.LOF.enrichment.csv",sep=",",header = T)
data_LOF$value <- log2(data_LOF$value)

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

data <- data_summary(data_LOF, varname="value", 
                     groupnames=c("type", "region"))
data$region = factor(data$region, levels=c("TAD","TADflank","TAD flanking & TAD"))

ggplot(data,aes(x=region,y=value,color=type))+
  geom_line() +
  geom_point()+
  geom_errorbar(aes(ymin=value-sd, ymax=value+sd), width=.2,
                position=position_dodge(0.4)) +
  theme_classic() +
  theme(axis.text.x = element_text(hjust=1))+
  geom_hline(yintercept = 0.00,linetype="dashed")+
  scale_color_nejm()
ggsave("fig3A.LOF.point.pdf",last_plot(),"pdf",width = 4,height = 2)

