class: CommandLineTool
id: xsv_join_columns2.cwl
inputs:
- id: columns_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: columns_2
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: input_2
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- xsv
- join
- columns2