class: CommandLineTool
id: pybel_manage_examples.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
- manage
- examples