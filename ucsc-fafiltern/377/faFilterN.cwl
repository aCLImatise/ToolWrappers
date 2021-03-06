class: CommandLineTool
id: ../../../faFilterN.cwl
inputs:
- id: in_out
  doc: ''
  type: string
  inputBinding:
    prefix: -out
- id: in_uniq
  doc: ''
  type: string
  inputBinding:
    prefix: -uniq
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_fa
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
- faFilterN
