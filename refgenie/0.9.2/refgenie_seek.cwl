class: CommandLineTool
id: ../../../refgenie_seek.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional if\nREFGENIE environment\
    \ variable is set."
  type: File
  inputBinding:
    prefix: --genome-config
- id: in_genome
  doc: Reference assembly ID, e.g. mm10.
  type: long
  inputBinding:
    prefix: --genome
- id: in_check_exists
  doc: "Whether the returned asset path should be checked for\nexistence on disk.\n"
  type: boolean
  inputBinding:
    prefix: --check-exists
- id: in_asset_registry_paths
  doc: "One or more registry path strings that identify assets\n(e.g. hg38/fasta or\
    \ hg38/fasta:tag or\nhg38/fasta.fai:tag)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refgenie
- seek
