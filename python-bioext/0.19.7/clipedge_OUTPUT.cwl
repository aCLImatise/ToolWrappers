class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/clipedge_OUTPUT.cwl
inputs:
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: clip_edge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- clipedge
- OUTPUT