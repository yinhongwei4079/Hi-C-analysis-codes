library(DOSE)
library(topGO)
#BiocManager::install("org.Ss.eg.db")
setwd("E://Rlanguage")
library(clusterProfiler)
library(pathview)
#library(org.Hs.eg.db)
library(org.Ss.eg.db)
library(ggplot2)
#keytypes(org.Hs.eg.db)
keytypes(org.Ss.eg.db) 
data <- read.table("biomart.entrez.gene.txt",header=FALSE)
gene_name <- read.table("conserve.gene.biomart.genename.txt",header = F)
colnames(data) <- c("ENTREZID")
colnames(gene_name) <- c("GENENAME")
gene_name$GENENAME <- as.character(gene_name$GENENAME)
data$ENTREZID <- as.character(data$ENTREZID) 
ggo <- groupGO(gene = data$ENTREZID, OrgDb = org.Ss.eg.db)
ggo <- groupGO(gene = gene_name$GENENAME,keyType = "GENENAME", OrgDb = org.Ss.eg.db)
ego_ALL <- enrichGO(gene = data$ENTREZID, 
                    OrgDb = org.Ss.eg.db, 
                    ont = "ALL",
                    pAdjustMethod = "BH", 
                    pvalueCutoff = 0.05, 
                    qvalueCutoff = 0.05,
                    readable = TRUE) 
#head(ego_MF,2)
#ego_MF <- enrichGO(gene = data$ENTREZID, #universe = names(geneList),
                   #OrgDb = org.Ss.eg.db,ont = "MF", 
                   #pAdjustMethod = "BH",pvalueCutoff = 0.05,qvalueCutoff = 0.01,readable = FALSE)
#head(ego_MF,6)

ego_MF1 <- setReadable(ego_MF, OrgDb = org.Ss.eg.db) 
write.table(ego_ALL,file="fig2c.GO.biomart.entrez.csv",sep=",",row.names =TRUE, col.names =TRUE, quote =TRUE)
ego <- read.table("fig2c.GO.csv",sep = ",",header = T)
ego$Description <- factor(ego$Description,levels=c("pattern specification process","embryonic skeletal system development",
                                                   "regionalization","embryonic organ morphogenesis","animal organ morphogenesis",
                                                   "anterior/posterior pattern specification","embryonic morphogenesis","embryonic organ development",
                                                   "embryonic skeletal system morphogenesis","skeletal system morphogenesis","DNA-binding transcription factor activity, RNA polymerase II-specific",
                                                   "DNA-binding transcription factor activity","sequence-specific DNA binding","sequence-specific double-stranded DNA binding",
                                                   "RNA polymerase II transcription regulatory region sequence-specific DNA binding","double-stranded DNA binding",
                                                   "transcription cis-regulatory region binding","transcription regulatory region nucleic acid binding"))
ego$p.adjust <- -log10(ego$p.adjust)
ggplot(ego,aes(x=Description,y = p.adjust))+
         geom_bar(aes(fill = ONTOLOGY),stat="identity",
        position=position_dodge(0.4),width = 0.3)+theme_classic()+coord_flip()+
  scale_fill_manual(values=c("#B33D29","#0F5E8B"))
  #theme(axis.text.x = element_text(angle = 45,hjust=1))+coord_flip()
#barplot(ego_MF, showCategory=20,title="EnrichmentGO_MF")
ggsave("fig3d.GO.pdf",last_plot(),"pdf",width = 8,height = 4)
#######################################################################################
#install.packages("R.utils")
R.utils::setOption("clusterProfiler.download.method",'auto')
kk <- enrichKEGG(gene = data$ENTREZID,
                 organism = "ssc",  
                 pvalueCutoff = 0.05)
#barplot(kk,title="Enrichment KEGG_dot")
write.table(kk,file="fig2c.KEGG.biomart.csv",sep=",",row.names =TRUE, col.names =TRUE, quote =TRUE)
kko <- read.table("fig2c.KEGG.csv",nrow=18,sep = ",",header = T)
kko$p.adjust <- -log10(kko$p.adjust)
kko$Description <- factor(kko$Description,levels=c("Signaling pathways regulating pluripotency of stem cells",
                                                   "MicroRNAs in cancer","Axon guidance","Rap1 signaling pathway",
                                                   "PI3K-Akt signaling pathway","Longevity regulating pathway",
                                                   "Wnt signaling pathway","Autophagy - animal","AMPK signaling pathway",
                                                   "Chemical carcinogenesis - receptor activation","Regulation of lipolysis in adipocytes","MAPK signaling pathway",
                                                   "Fluid shear stress and atherosclerosis","Cysteine and methionine metabolism",
                                                   "Regulation of actin cytoskeleton","Relaxin signaling pathway","Insulin secretion",
                                                   "Proteoglycans in cancer"))
ggplot(kko,aes(x=Description,y = p.adjust))+
  geom_bar(aes(fill = p.adjust),stat="identity",fill =topo.colors(18),
           color=topo.colors(18),position=position_dodge(0.4),width = 0.3)+theme_classic()+coord_flip()
  #theme(axis.text.x = element_text(angle = 45,hjust=1))
ggsave("fig3e.KEGG.pdf",last_plot(),"pdf",width = 8,height = 4)
