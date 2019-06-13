params.reads = false

println "My reads: ${params.reads}"

reads = Channel.fromFilePairs(params.reads, size: 2)

process fastqc {

    publishDir "results"

    input:
    set val(name), file(reads) from reads

    output:
    file "*_fastqc.{zip,html}" into fastqc_results

    script:
    """
    fastqc $reads
    """
}