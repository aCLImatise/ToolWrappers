class: CommandLineTool
id: ../../../filter_positions.pl.cwl
inputs:
- id: in_input
  doc: ':  Input file (snv_align-positions.tsv generated by snv pipeline)'
  type: boolean
  inputBinding:
    prefix: --input
- id: in_bad_positions
  doc: ': Positions file to filter, in BED or GFF format'
  type: boolean
  inputBinding:
    prefix: --bad-positions
- id: in_output
  doc: ':  Output base file name'
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: ':  Output base file name'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- filter-positions.pl
