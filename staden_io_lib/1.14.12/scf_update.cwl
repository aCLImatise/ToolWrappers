class: CommandLineTool
id: ../../../scf_update.cwl
inputs:
- id: in_v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_destination
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
- scf_update
