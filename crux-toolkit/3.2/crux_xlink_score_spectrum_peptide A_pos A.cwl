class: CommandLineTool
id: crux_xlink_score_spectrum_peptide A_pos A.cwl
inputs:
- id: peptide_b
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pos_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: posb
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: link_mass
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: charge_state
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: scan_number
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: ms2_file
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- xlink-score-spectrum
- peptide A
- pos A