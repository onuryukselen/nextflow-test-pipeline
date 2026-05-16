#!/usr/bin/env nextflow
nextflow.enable.dsl=2

process FETCH_DATA {
    script:
    """
    echo "FETCH_DATA: starting at \$(date)"
    sleep 60
    echo "FETCH_DATA: done"
    """
}

process ALIGN {
    script:
    """
    echo "ALIGN: starting at \$(date)"
    sleep 60
    echo "ALIGN: done"
    """
}

process SORT_BAM {
    input: val(x)
    script:
    """
    echo "SORT_BAM: starting at \$(date)"
    sleep 60
    echo "SORT_BAM: done"
    """
}

process CALL_VARIANTS {
    input: val(x)
    script:
    """
    echo "CALL_VARIANTS: starting at \$(date)"
    sleep 60
    echo "CALL_VARIANTS: done"
    """
}

process QC_REPORT {
    input: val(x)
    script:
    """
    echo "QC_REPORT: starting at \$(date)"
    sleep 60
    echo "QC_REPORT: done"
    """
}

workflow {
    fetch = FETCH_DATA()
    align = ALIGN()
    sort  = SORT_BAM(align.out.ifEmpty('done'))
    vars  = CALL_VARIANTS(sort.out.ifEmpty('done'))
    QC_REPORT(vars.out.ifEmpty('done'))
}
