class: CommandLineTool
id: ../../../qualfa2fq.pl.cwl
inputs:
- id: in_in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_qual
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
- qualfa2fq.pl
