
samples = config["tissues"]

rule all:
    input:
        expand("TAD/HiC_{sample}_10kb_corrected", sample=samples),
        expand("hicMatrix/{sample}_10kb_loops.bedgraph", sample=samples),
        expand("Figure/{sample}_PCA1.png", sample=samples),
        expand("Figure/hic_{sample}_chr7_plot.png", sample=samples),
        os.path.dirname(config["genome"]) + config["genome_name"] + ".1.bt2"



##################################
# Index pig genome withe bowtie2 #
##################################

rule bowtie2_index:
    input:
        config["genome"]
    output:
        genomedir = os.path.dirname(config["genome"])+ config["genome_name"],
        haha = os.path.dirname(config["genome"]) + config["genome_name"] + ".1.bt2"

    conda:
        'Envs/bowtie2.yaml'
    threads: 12
    shell:
         'bowtie2-build {input} {output.genomedir} '

#######################################################################################################################
# Create a location file containing genome enzyme cleavage sites (two types of restriction enzymes: HindIII and MboI) #
#######################################################################################################################
rule hicFindRestSite:##创建包含基因组酶切位点的位置文件（分两种酶切类型：HindIII，MboI）
    input:
        config["genome"]
    output:
        'rest_site_positions.bed'
    conda:
        'Envs/hicexplorer.yaml'
    threads: 12
    shell:
         'hicFindRestSite --fasta {input} --searchPattern AAGCTT -o rest_site_positions.bed'

######################################
# Data quality control and filtering #
######################################
rule trim_HiC_paired:##trime_galore 数据质控过滤
    input:
        'Raw_Reads/HiC_{sample}_R1.fq.gz',
        'Raw_Reads/HiC_{sample}_R2.fq.gz'
    output:
        'Temp/HiC_{sample}_R1_val_1.fq.gz',
        'Temp/HiC_{sample}_R2_val_2.fq.gz',
        'Temp/HiC_{sample}_R1.fq.gz_trimming_report.txt',
        'Temp/HiC_{sample}_R2.fq.gz_trimming_report.txt'
    conda:
        'Envs/trimgalore.yaml'
    shell:
        'trim_galore -q 20 --paired --max_n 15 --clip_R2 3 --adapter AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT --adapter2 GATCGGAAGAGCACACGTCTGAACTCCAGTCACATCACGATCTCGTATGCCGTCTTCTGCTTG {input} -o Temp'



##############################################################
# Align with the reference genome with one paired clean data #
##############################################################
rule bwa_bowtie2_1:
    input: 
        index = os.path.dirname(config["genome"]) + config["genome_name"],
        reads1 = 'Temp/HiC_{sample}_R1_val_1.fq.gz'
    output: 
        bam = 'Temp/HiC_{sample}_R1_val_1.bam'
    #group: 'bwa_align'
    threads: 24
    conda:
        'Envs/bowtie2.yaml'
    shell: 
        "bowtie2 -x {input.index}  --threads {threads}  -U {input.reads1} --reorder  --local | samtools view -Shb - > {output}"


##################################################################
# Align with the reference genome with another paired clean data #
##################################################################
rule bwa_bowtie2_2:
    input: 
        index = os.path.dirname(config["genome"]) + config["genome_name"],
        reads2 = 'Temp/HiC_{sample}_R2_val_2.fq.gz'
    output: 
        bam =  'Temp/HiC_{sample}_R2_val_2.bam'
    #group: 'bwa_align'
    threads: 24
    conda:
        'Envs/bowtie2.yaml'
    shell: 
        "bowtie2 -x {input.index}  --threads {threads}  -U {input.reads2} --reorder  --local | samtools view -Shb - > {output}"

######################################################
# Establishing a Hi-C interaction matrix with juicer #
######################################################
rule hicBuildMatrix:
    input: 
        bam1 = 'Temp/HiC_{sample}_R1_val_1.bam',
        bam2 = 'Temp/HiC_{sample}_R2_val_2.bam',

    output: 
         bam3 = 'Aligned_Reads/HiC_{sample}.bam',
         H5 = 'hicMatrix/HiC_{sample}_10kb.h5',
         QC = 'hicMatrix/HiC_{sample}_10kb_QC'
    #group: 'bwa_align'
    threads: 24
    conda:
        'Envs/hicexplorer.yaml'
    shell: 
        "hicBuildMatrix --samFiles {input.bam1} {input.bam2} --binSize 10000 --restrictionSequence AAGCTT --danglingSequence AGCT --outBam {output.bam3} --outFileName {output.H5}  --QCfolder {output.QC}  --threads {threads} --inputBufferSize 100000"

##################################################
# Adjusted a Hi-C interaction matrix with juicer #
##################################################
rule diagnostic_plot:
    input: 
        'hicMatrix/HiC_{sample}_10kb.h5'

    output: 
         'Figure/HiC_{sample}_10kb_corrected.png'
    #group: 'bwa_align'
    conda:
        'Envs/hicexplorer.yaml'
    threads: 24
    shell: 
        "hicCorrectMatrix diagnostic_plot -m {input}  -o {output} "


rule correct:
    input: 
        'hicMatrix/HiC_{sample}_10kb.h5'

    output: 
         'hicMatrix/HiC_{sample}_10kb_corrected.h5'
    #group: 'bwa_align'
    conda:
        'Envs/hicexplorer.yaml'
    threads: 24
    shell: 
        "hicCorrectMatrix correct -m {input} --filterThreshold -1.5 5 -o {output} "

########################################################
# Generate Hi-C interaction matrix heatmap with juicer #
########################################################
rule heatmap:
    input: 
        'hicMatrix/HiC_{sample}_10kb_corrected.h5'

    output: 
         'Figure/hic_{sample}_chr7_plot.png'
    #group: 'bwa_align'
    conda:
        'Envs/hicexplorer.yaml'
    threads: 5
    shell: 
        "hicPlotMatrix -m {input}  -o {output} --region chr7:1-121844099 --log1p"


########################################################
# Identify TADs with juicer #
########################################################
rule hicFindTAD:
    input: 
        'hicMatrix/HiC_{sample}_10kb_corrected.h5'

    output: 
         'TAD/HiC_{sample}_10kb_corrected'
    #group: 'bwa_align'
    conda:
        'Envs/hicexplorer.yaml'
    threads: 24
    shell: 
        "hicFindTADs -m {input}  --outPrefix {output} --numberOfProcessors 16 --correctForMultipleTesting fdr"