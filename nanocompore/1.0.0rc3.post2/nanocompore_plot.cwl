class: CommandLineTool
id: ../../../nanocompore_plot.cwl
inputs:
- id: in_nano_compo_re
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nanocompore
- plot
