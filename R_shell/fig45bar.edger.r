library(edgeR)
setwd("E://Rlanguage")
####################bama.adipose.chr4##########################
bama.comparsion <- read.csv("bama.comparsion.differ.gene.sample.csv",header = T,row.names = 1)
head(bama.comparsion)
group <-factor(c(rep("Adipose",10),rep("Liver",3)))
counts <- bama.comparsion[,1:13]
y <- DGEList(counts=counts, group = group)
#dgelist_norm <- calcNormFactors(y, method = 'TMM')
#plotMDS(dgelist_norm, col = rep(c('red', 'blue'), each = 3))
design <- model.matrix(~group)
bama <- estimateDisp(y,design,robust=T)
plotBCV(bama)
fit <- glmQLFit(bama,design ,robust = T)
lrt <- topTags(glmLRT(fit), n = nrow(y$counts))
write.table(lrt, 'glmLRT.txt', sep = '\t', col.names = NA, quote = FALSE)
gene_diff <- read.delim('glmLRT.txt', sep = '\t', check.names = FALSE)
gene_diff <- gene_diff[order(gene_diff$FDR, gene_diff$logFC, decreasing = c(FALSE, TRUE)), ]
#gene_diff$FDR <- p.adjust(gene_diff$PValue,method="BH")

gene_diff[which(gene_diff$logFC >= 1 & gene_diff$PValue < 0.01),'sig'] <- 'up'
gene_diff[which(gene_diff$logFC <= -1 & gene_diff$PValue < 0.01),'sig'] <- 'down'
gene_diff[which(abs(gene_diff$logFC) <= 1 | gene_diff$PValue >= 0.01),'sig'] <- 'none'

gene_diff_select <- subset(gene_diff, sig %in% c('up', 'down'))
write.table(gene_diff_select, file = 'glmFit.select.txt', sep = '\t', col.names = NA, quote = FALSE)


gene_diff_up <- subset(gene_diff, sig == 'up')
gene_diff_down <- subset(gene_diff, sig == 'down')
write.table(gene_diff_up, file = 'glmFit.up.txt', sep = '\t', col.names = NA, quote = FALSE)
write.table(gene_diff_down, file = 'glmFit.down.txt', sep = '\t', col.names = NA, quote = FALSE)
library(ggplot2)
library(ggsci)
colnames(gene_diff_select) <- c("gene_name","logFC","logCPM","LR","PValue","FDR","sig")
gene_diff_select$sig  = factor(gene_diff_select$sig, levels=c("up","down"))
bama.adipose <- ggplot()+geom_bar(data=gene_diff_select,mapping=aes(x=gene_name,y=logFC,fill =sig),stat = "identity")+
  theme_classic()+scale_y_continuous(name = "Log2FoldChange")+
  theme(axis.text.x = element_text(angle = 60,hjust=1),)+scale_fill_nejm()

ggsave("Fig4A.bama.adipose.liver.expression.pdf", bama.adipose, "pdf", width =8,height = 6)
##########LW.adipose#######################################
LW.comparsion <- read.csv("LW.comparsion.differ.gene.sample.csv",header = T,row.names = 1)
head(LW.comparsion)
group <-factor(c(rep("Muscle",154),rep("Adipose",36)))
counts <- LW.comparsion[,1:190]
y <- DGEList(counts=counts, group = group)

#dgelist_norm <- calcNormFactors(y, method = 'TMM')
#plotMDS(dgelist_norm, col = rep(c('red', 'blue'), each = 3))
design <- model.matrix(~group)
LW <- estimateDisp(y,design,robust=T)
plotBCV(bama)
fit <- glmQLFit(LW,design ,robust = T)
lrt <- topTags(glmLRT(fit), n = nrow(y$counts))
write.table(lrt, 'glmLRT.txt', sep = '\t', col.names = NA, quote = FALSE)
gene_diff <- read.delim('glmLRT.txt', sep = '\t', check.names = FALSE)
gene_diff <- gene_diff[order(gene_diff$FDR, gene_diff$logFC, decreasing = c(FALSE, TRUE)), ]
#gene_diff$FDR <- p.adjust(gene_diff$PValue,method="BH")

gene_diff[which(gene_diff$logFC >= 1 & gene_diff$PValue < 0.01),'sig'] <- 'up'
gene_diff[which(gene_diff$logFC <= -1 & gene_diff$PValue < 0.01),'sig'] <- 'down'
gene_diff[which(abs(gene_diff$logFC) <= 1 | gene_diff$PValue >= 0.01),'sig'] <- 'none'

gene_diff_select <- subset(gene_diff, sig %in% c('up', 'down'))
write.table(gene_diff_select, file = 'glmFit.select.txt', sep = '\t', col.names = NA, quote = FALSE)


gene_diff_up <- subset(gene_diff, sig == 'up')
gene_diff_down <- subset(gene_diff, sig == 'down')
write.table(gene_diff_up, file = 'glmFit.up.txt', sep = '\t', col.names = NA, quote = FALSE)
write.table(gene_diff_down, file = 'glmFit.down.txt', sep = '\t', col.names = NA, quote = FALSE)
library(ggplot2)
library(ggsci)
colnames(gene_diff_select) <- c("gene_name","logFC","logCPM","LR","PValue","FDR","sig")
gene_diff_select$sig  = factor(gene_diff_select$sig, levels=c("up","down"))

LW <- ggplot()+geom_bar(data=gene_diff_select,mapping=aes(x=gene_name,y=logFC,fill =sig),stat = "identity")+
  theme_classic()+scale_y_continuous(name = "Log2FoldChange")+
  theme(axis.text.x = element_text(angle = 60,hjust=1),)+scale_fill_nejm()
gene_diff_select$sig  = factor(gene_diff_select$sig, levels=c("up","down"))
ggsave("Fig4A.LW.adipose.muscle.expression..pdf", LW, "pdf", width =8,height = 6)


#################

LR.comparsion <- read.csv("LW_RC.comparsion.differ.gene.sample.csv",header = T,row.names = 1)
head(LR.comparsion)
group <-factor(c(rep("Rongchang",8),rep("Yorkshire",154)))
counts <- LR.comparsion[,1:162]
y <- DGEList(counts=counts, group = group)

#dgelist_norm <- calcNormFactors(y, method = 'TMM')
#plotMDS(dgelist_norm, col = rep(c('red', 'blue'), each = 3))
design <- model.matrix(~group)
LR <- estimateDisp(y,design,robust=T)
plotBCV(LR)
fit <- glmQLFit(LR,design ,robust = T)
lrt <- topTags(glmLRT(fit), n = nrow(y$counts))
write.table(lrt, 'glmLRT.txt', sep = '\t', col.names = NA, quote = FALSE)
gene_diff <- read.delim('glmLRT.txt', sep = '\t', check.names = FALSE)
gene_diff <- gene_diff[order(gene_diff$FDR, gene_diff$logFC, decreasing = c(FALSE, TRUE)), ]
#gene_diff$FDR <- p.adjust(gene_diff$PValue,method="BH")

gene_diff[which(gene_diff$logFC >= 0.85 & gene_diff$PValue < 0.05),'sig'] <- 'up'
gene_diff[which(gene_diff$logFC <= -0.85 & gene_diff$PValue < 0.05),'sig'] <- 'down'
gene_diff[which(abs(gene_diff$logFC) <= 0.85 | gene_diff$PValue >= 0.05),'sig'] <- 'none'

gene_diff_select <- subset(gene_diff, sig %in% c('up', 'down'))
write.table(gene_diff_select, file = 'glmFit.select.txt', sep = '\t', col.names = NA, quote = FALSE)


gene_diff_up <- subset(gene_diff, sig == 'up')
gene_diff_down <- subset(gene_diff, sig == 'down')
write.table(gene_diff_up, file = 'glmFit.up.txt', sep = '\t', col.names = NA, quote = FALSE)
write.table(gene_diff_down, file = 'glmFit.down.txt', sep = '\t', col.names = NA, quote = FALSE)
library(ggplot2)
library(ggsci)
colnames(gene_diff_select) <- c("gene_name","logFC","logCPM","LR","PValue","FDR","sig")
gene_diff_select$sig  = factor(gene_diff_select$sig, levels=c("up","down"))

LR <- ggplot()+geom_bar(data=gene_diff_select,mapping=aes(x=gene_name,y=logFC,fill =sig),stat = "identity")+
  theme_classic()+scale_y_continuous(name = "Log2FoldChange")+
  theme(axis.text.x = element_text(angle = 60,hjust=1),)+scale_fill_nejm()
gene_diff_select$sig  = factor(gene_diff$sig, levels=c("up","down"))
ggsave("Fig4A.LW.RC.ear.expression..pdf", LR, "pdf", width =8,height = 6)
