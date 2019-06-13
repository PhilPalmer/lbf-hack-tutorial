# London Bioinformatics Frontiers Hackathon Tutorial
Tutorial for The [London Bioinformatics Frontiers](http://bioinformatics-frontiers.com) Hackathon 2019.

![lbf_banner](https://raw.githubusercontent.com/PhilPalmer/lbf-hack-tutorial/master/images/lbf_banner.png)

Intro to:
- [Nextflow](https://www.nextflow.io/) **\<Insert descriptions here\>**
- [Docker](https://www.docker.com/)
- [FlowCraft](https://flowcraft.readthedocs.io/en/latest/)
- [Deploit](https://lifebit.ai/deploit)

## Prerequisites
The following are required for the hackathon:
- Java 8 or later
- Docker engine 1.10.x (or higher)
- Git
- Python3

*If you have them installed that's great! Don't worry if not we will help you to install them & other software throughout the tutorial*

<br />

## Session 1: Nextflow

![nextflow_logo](https://raw.githubusercontent.com/PhilPalmer/lbf-hack-tutorial/master/images/nextflow.png)

[See about Nextflow slides]()

During the first session you will build a [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) & [MultiQC](https://multiqc.info/)   pipeline to learn the basics of Nextflow including:
- Parameters **\<Add links to nf docs here\>**
- Processes (inputs, outputs & scripts)
- Channels
- Operators
- Configuration


### a) Installation
You will need to have Java 8 or later installed for Nextflow to work. You can check your version of Java by entering the following command:
```bash
java -version
```

To install Nextflow open a terminal & enter the following command:
```bash
curl -fsSL get.nextflow.io | bash
```

This will create a `nextflow` executable file in your current directory. To complete the installation so that you can run Nextflow run anywhere you may want to add it a directory in your $PATH, eg:
```
mv nextflow /usr/local/bin
```

You can then test your installation of Nextflow with:
```
nextflow run hello
```

**\<insert Docker installation here\>**
  
### b) Parameters

Write a script & get it to print the parameters. Learn how to pass parameters

### b) Processes (inputs, outputs & scripts)

Create a fastqc process run `-with-docker`

### c) Channels

Load files in a channel instead of using `file()`

### d) Operators

Add multiqc process to connect processes & use `.collect()` & then show that the pipeline runs for multiple fastq files

### e) Configuration

Add parameters, docker & memory etc to `nextflow.config`

<br />

## Session 2: Docker

![docker logo](https://raw.githubusercontent.com/PhilPalmer/lbf-hack-tutorial/master/images/docker.gif)

Why use Docker? **\<Insert reproducibility meme here\>**
[See about Docker slides]()


### a) Running images

Docker run command

### b) Dockerfiles

How to write a Dockerfile. From nf-core. Install fastqc & multiqc

### c) Building images

Docker build command & run interactively


### d) BONUS: Pushing to DockerHub

What is DockerHub? How to create an account on DockerHub, log in on the CLI & push to DockerHub.

<br />

## Session 3: FlowCraft

![flowcraft logo](https://raw.githubusercontent.com/PhilPalmer/lbf-hack-tutorial/master/images/flowcraft.png)

What is FlowCraft? Why use it? 
[See FlowCraft slides](https://slides.com/diogosilva-1/nextflow-workshop-2018-6#/)

### a) Installation
```bash
git clone https://github.com/assemblerflow/flowcraft.git
cd flowcraft
python3 setup.py install
```

### b) How to build a FlowCraft Component
### i. Templates
### ii. Classes

### c) Building a pipeline with FlowCraft
```bash
flowcraft.py build -t "fastqc bwa mark_duplicates haplotypecaller" -o gatk.nf --merge-params
```

<br />

## Session 4: Running Nextflow Pipelines on The Cloud on Deploit

![deploit logo](https://raw.githubusercontent.com/PhilPalmer/lbf-hack-tutorial/master/images/deploit.png)

About [Deploit](https://lifebit.ai/deploit)

### a) Creating an account
### b) Running a pipeline
### c) Importing a Nextflow pipeline on Deploit
