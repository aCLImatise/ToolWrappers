class: CommandLineTool
id: arb_readlink.cwl
inputs:
- id: silent
  doc: suppress most error messages (on by default)
  type: boolean
  inputBinding:
    prefix: --silent
- id: verbose
  doc: report error messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: zero
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_readlink