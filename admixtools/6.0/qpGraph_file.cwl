class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/qpGraph_file.cwl
inputs:
- id: bad
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: params_dot_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- qpGraph
- file