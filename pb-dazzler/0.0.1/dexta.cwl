class: CommandLineTool
id: ../../../dexta.cwl
inputs:
- id: in_vk
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vk
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dexta
