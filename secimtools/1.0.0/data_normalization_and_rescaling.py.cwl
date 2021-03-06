class: CommandLineTool
id: ../../../data_normalization_and_rescaling.py.cwl
inputs:
- id: in_m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File
  inputBinding:
    prefix: --design
- id: in_uniqid
  doc: Name of the column with unique.identifiers.
  type: string
  inputBinding:
    prefix: --uniqID
- id: in_method
  doc: "Name of the normalization method that user wants to\napply."
  type: string
  inputBinding:
    prefix: --method
- id: in_out
  doc: Path for TSV output of the normalized/re-scalled data.
  type: File
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Path for TSV output of the normalized/re-scalled data.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- data_normalization_and_rescaling.py
