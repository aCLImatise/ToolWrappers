class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htsbox_faidx.cwl
inputs:
- id: fa_idx
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- faidx