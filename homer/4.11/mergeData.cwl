class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mergeData.pl.cwl
inputs:
- id: file_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_two
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mergeData.pl