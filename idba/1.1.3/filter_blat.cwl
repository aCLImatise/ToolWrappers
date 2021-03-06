class: CommandLineTool
id: ../../../filter_blat.cwl
inputs:
- id: in_min_contig
  doc: (=100)            minimum contigs
  type: long
  inputBinding:
    prefix: --min_contig
- id: in_similar
  doc: (=0.95)              similarity
  type: double
  inputBinding:
    prefix: --similar
- id: in_is_local
  doc: is local
  type: boolean
  inputBinding:
    prefix: --is_local
- id: in_validate_contigs_blat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_contigs_dot_fa_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter_blat
