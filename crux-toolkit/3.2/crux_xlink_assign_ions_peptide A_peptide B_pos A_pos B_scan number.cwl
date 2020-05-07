class: CommandLineTool
id: crux_xlink_assign_ions_peptide A_peptide B_pos A_pos B_scan number.cwl
inputs:
- id: link_mass
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: charge_state
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: scan_number
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ms2_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- xlink-assign-ions
- peptide A
- peptide B
- pos A
- pos B
- scan number