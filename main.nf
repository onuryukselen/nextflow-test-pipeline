#!/usr/bin/env nextflow
nextflow.enable.dsl=2

process FETCH_DATA {
    output: val('done')
    script:
    """
    echo "FETCH_DATA: starting at \$(date)"
    sleep 60
    echo "FETCH_DATA: done"
    """
}

process ALIGN {
    output: val('done')
    script:
    """
    echo "ALIGN: starting at \$(date)"
    sleep 60
    echo "ALIGN: done"
    """
}

process SORT_BAM {
    input: val(x)
    output: val('done')
    script:
    """
    echo "SORT_BAM: starting at \$(date)"
    sleep 60
    echo "SORT_BAM: done"
    """
}

process CALL_VARIANTS {
    input: val(x)
    output: val('done')
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
    sort  = SORT_BAM(align.out)
    vars  = CALL_VARIANTS(sort.out)
    QC_REPORT(vars.out)
}
