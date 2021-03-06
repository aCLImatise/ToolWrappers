class: CommandLineTool
id: ../../../singlem_renew.cwl
inputs:
- id: in_input_archive_otu_tables
  doc: ''
  type: string[]
  inputBinding:
    prefix: --input_archive_otu_tables
- id: in_full_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --full_help
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singlem
- renew
