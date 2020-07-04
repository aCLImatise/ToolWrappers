class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fpa_drop.cwl
inputs:
- id: containment
  doc: Drop containment mapping
  type: boolean
  inputBinding:
    prefix: --containment
- id: dovetail
  doc: Drop dovetail mapping
  type: boolean
  inputBinding:
    prefix: --dovetail
- id: internal_match
  doc: Drop internal mapping
  type: boolean
  inputBinding:
    prefix: --internalmatch
- id: same_name
  doc: Drop mapping where reads have same name
  type: boolean
  inputBinding:
    prefix: --same-name
- id: length_lower
  doc: Drop mapping with length lower than value
  type: long
  inputBinding:
    prefix: --length-lower
- id: length_upper
  doc: Drop mapping with length upper than value
  type: long
  inputBinding:
    prefix: --length-upper
- id: name_match
  doc: Drop mapping where one reads match with regex
  type: string
  inputBinding:
    prefix: --name-match
- id: sequence_length_lower
  doc: Drop mapping where one reads have length lower than value
  type: string
  inputBinding:
    prefix: --sequence-length-lower
- id: sequence_length_upper
  doc: Drop mapping where one reads have length upper than value
  type: string
  inputBinding:
    prefix: --sequence-length-upper
outputs: []
cwlVersion: v1.1
baseCommand:
- fpa
- drop