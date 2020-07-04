class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkm_taxonomy_wf_taxon.cwl
inputs:
- id: ali
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ali
- id: nt
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nt
- id: g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: individual_markers
  doc: ''
  type: boolean
  inputBinding:
    prefix: --individual_markers
- id: check_m
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: taxonomy_wf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- taxonomy_wf
- taxon