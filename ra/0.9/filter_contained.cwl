class: CommandLineTool
id: ../../../filter_contained.cwl
inputs:
- id: in_depot
  doc: depot path (string)
  type: boolean
  inputBinding:
    prefix: --depot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter_contained
