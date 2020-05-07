class: CommandLineTool
id: arb_protpars_geneticcode.cwl
inputs:
- id: bootstrap
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genetic_code
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: view_report
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: randomize
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: threshold_pars
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: interactive
  doc: ''
  type: long
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_protpars
- geneticcode