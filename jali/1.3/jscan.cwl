class: CommandLineTool
id: jscan.cwl
inputs:
- id: sequence_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_db_prodom
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: w
  doc: //amino acid similarity matrix
  type: string
  inputBinding:
    prefix: -w
- id: i
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -i
- id: e
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -e
- id: j
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -j
- id: l
  doc: //print best l scores
  type: string
  inputBinding:
    prefix: -l
- id: o
  doc: //run in verbose mode
  type: boolean
  inputBinding:
    prefix: -o
- id: v
  doc: //print version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- jscan