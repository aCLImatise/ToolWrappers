class: CommandLineTool
id: ../../../krakenuniq_filter.cwl
inputs:
- id: in_threshold
  doc: ''
  type: long
  inputBinding:
    prefix: --threshold
- id: in_db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- krakenuniq-filter
