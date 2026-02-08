nextflow.enable.dsl = 2

process HELLO_HPC {

    script:
    """
    echo "hostname: $(hostname)"
    echo "date: $(date)"
    echo "SLURM_JOB_ID: ${SLURM_JOB_ID:-not_running_on_slurm}"
    """
}

workflow {
    HELLO_HPC()
}
