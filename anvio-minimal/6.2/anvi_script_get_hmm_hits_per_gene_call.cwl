class: CommandLineTool
id: anvi_script_get_hmm_hits_per_gene_call.cwl
inputs:
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: hmm_source
  doc: NAME Use a specific HMM source. You can use '--list-hmm- sources' flag to see
    a list of available resources. The default is 'None'.
  type: string
  inputBinding:
    prefix: --hmm-source
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-get-hmm-hits-per-gene-call