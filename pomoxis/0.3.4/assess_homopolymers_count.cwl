class: CommandLineTool
id: ../../../assess_homopolymers_count.cwl
inputs:
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- assess_homopolymers
- count
