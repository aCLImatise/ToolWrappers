class: CommandLineTool
id: ../../../obo_transitive_reduction.pl.cwl
inputs:
- id: in_obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
- id: in_usage
  doc: ': obo_transitive_reduction.pl [options]'
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: ':'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- obo_transitive_reduction.pl
