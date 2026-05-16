#!/usr/bin/env nextflow
nextflow.enable.dsl=2

process SLEEP {
    script:
    """
    echo "Pipeline started at \$(date)"
    sleep 15
    echo "Pipeline done at \$(date)"
    """
}

workflow {
    SLEEP()
}
