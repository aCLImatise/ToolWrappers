class: CommandLineTool
id: ../../../CollectMapqMetrics.cwl
inputs:
- id: in_displays_options_specific
  doc: Displays options specific to this tool.
  type: boolean
  inputBinding:
    prefix: -h
- id: in_std_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --stdhelp
- id: in_displays_options_and
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean
  inputBinding:
    prefix: -H
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CollectMapqMetrics
