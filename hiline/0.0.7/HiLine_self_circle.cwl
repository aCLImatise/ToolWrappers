class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/HiLine_self_circle.cwl
inputs:
- id: sort
  doc: / --no-sort  Sort and index output. Default=sort
  type: boolean
  inputBinding:
    prefix: --sort
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- HiLine
- self-circle