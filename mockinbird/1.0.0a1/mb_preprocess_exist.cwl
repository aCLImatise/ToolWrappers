class: CommandLineTool
id: ../../../mb_preprocess_exist.cwl
inputs:
- id: in_log_level
  doc: ''
  type: string
  inputBinding:
    prefix: --log_level
- id: in_mock_in_bird_preprocess
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
- mb-preprocess
- exist
