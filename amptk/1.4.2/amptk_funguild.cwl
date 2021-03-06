class: CommandLineTool
id: ../../../amptk_funguild.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_u
  doc: ''
  type: boolean
  inputBinding:
    prefix: -u
- id: in_m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_am_ptk
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- amptk
- funguild
