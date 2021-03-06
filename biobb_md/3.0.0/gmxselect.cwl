class: CommandLineTool
id: ../../../gmxselect.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File
  inputBinding:
    prefix: --config
- id: in_input_ndx_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_ndx_path
- id: in_input_structure_path
  doc: ''
  type: File
  inputBinding:
    prefix: --input_structure_path
- id: in_output_ndx_path
  doc: ''
  type: string
  inputBinding:
    prefix: --output_ndx_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gmxselect
