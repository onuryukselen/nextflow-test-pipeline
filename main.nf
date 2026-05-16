#!/usr/bin/env nextflow
nextflow.enable.dsl=2

process FETCH_DATA {
    script:
    """
    echo "FETCH_DATA: starting at \$(date)"
    sleep 10
    echo "FETCH_DATA: done"
    """
}

process ALIGN {
    script:
    """
    echo "ALIGN: starting at \$(date)"
    sleep 25
    echo "ALIGN: done"
    """
}

process SORT_BAM {
    script:
    """
    echo "SORT_BAM: starting at \$(date)"
    sleep 20
    echo "SORT_BAM: done"
    """
}

process CALL_VARIANTS {
    script:
    """
    echo "CALL_VARIANTS: starting at \$(date)"
    sleep 30
    echo "CALL_VARIANTS: done"
    """
}

process QC_REPORT {
    script:
    """
    echo "QC_REPORT: starting at \$(date)"
    sleep 15
    echo "QC_REPORT: done"
    """
}

workflow {
    FETCH_DATA()
    ALIGN()
    SORT_BAM()
    CALL_VARIANTS()
    QC_REPORT()
}
