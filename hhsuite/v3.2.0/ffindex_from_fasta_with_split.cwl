class: CommandLineTool
id: ffindex_from_fasta_with_split.cwl
inputs:
- id: s
  doc: sort index file
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_from_fasta_with_split