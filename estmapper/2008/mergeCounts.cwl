class: CommandLineTool
id: ../../../mergeCounts.cwl
inputs:
- id: in_count_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_count_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mergeCounts
