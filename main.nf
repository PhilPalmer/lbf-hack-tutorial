params.reads = false

println "My reads: ${params.reads}"

reads = Channel.fromFilePairs(params.reads, size: 2)

process fastqc {

    tag "$name"
    publishDir "results", mode: 'copy'
    container 'flowcraft/fastqc:0.11.7-1'

    input:
    set val(name), file(reads) from reads

    output:
    file "*_fastqc.{zip,html}" into fastqc_results

    script:
    """
    fastqc $reads
    """
}

process multiqc {

    publishDir "results", mode: 'copy'
    container 'ewels/multiqc:v1.7'

    input:
    file (fastqc:'fastqc/*') from fastqc_results.collect()

    output:
    file "*multiqc_report.html" into multiqc_report
    file "*_data"

    script:
    """
    multiqc . -m fastqc
    """
}