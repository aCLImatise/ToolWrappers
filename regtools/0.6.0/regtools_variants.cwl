class: CommandLineTool
id: ../../../regtools_variants.cwl
inputs:
- id: in_command
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
- regtools
- variants
