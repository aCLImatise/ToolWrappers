class: CommandLineTool
id: ../../../fastatranslate.cwl
inputs:
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_fast_a
  doc: ''
  type: File
  inputBinding:
    prefix: --fasta
- id: in_frame
  doc: ''
  type: boolean
  inputBinding:
    prefix: --frame
- id: in_genetic_code
  doc: ''
  type: boolean
  inputBinding:
    prefix: --geneticcode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastatranslate
