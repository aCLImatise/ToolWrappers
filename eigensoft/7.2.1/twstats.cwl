class: CommandLineTool
id: twstats.cwl
inputs:
- id: bad
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: params
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- twstats