class: CommandLineTool
id: ../../../install.pl.cwl
inputs:
- id: in_make
  doc: make install
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- install.pl
