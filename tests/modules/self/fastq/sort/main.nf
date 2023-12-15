#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FASTQ_SORT } from '../../../../../modules/self/fastq/sort/main.nf'

workflow test_fastq_sort {
    
    input = [
        [ id:'test', single_end:false ], // meta map
        file(params.test_data['sarscov2']['illumina']['test_paired_end_bam'], checkIfExists: true)
    ]

    FASTQ_SORT ( input )
}
