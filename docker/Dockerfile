FROM nfcore/base

LABEL authors="phil@lifebit.ai" \
      description="Docker image containing fastqc & multiqc for LBF hackathon tutorial"

RUN conda config --append channels conda-forge && \
    conda install -c bioconda fastqc=0.11.8 && \
    conda install -c bioconda multiqc=1.7