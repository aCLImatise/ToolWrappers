class: CommandLineTool
id: ../../../sample.py.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_data
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sample.py
