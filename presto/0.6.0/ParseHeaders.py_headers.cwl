class: CommandLineTool
id: ../../../ParseHeaders.py_headers.cwl
inputs:
- id: in_parse_headers_do_tpy
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
- ParseHeaders.py
- headers
