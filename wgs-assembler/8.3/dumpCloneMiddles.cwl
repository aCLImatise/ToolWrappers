class: CommandLineTool
id: ../../../dumpCloneMiddles.cwl
inputs:
- id: in__attempt_guess
  doc: "-- attempt to guess all the required options, if your assembly\nfollows runCA-OBT\
    \ naming conventions."
  type: string
  inputBinding:
    prefix: -p
- id: in_ctg
  doc: -- dump contigs
  type: boolean
  inputBinding:
    prefix: -ctg
- id: in_scf
  doc: -- dump scaffolds
  type: boolean
  inputBinding:
    prefix: -scf
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_c
  doc: ''
  type: File
  inputBinding:
    prefix: -c
- id: in_n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
- id: in__generate_contig
  doc: -- generate a single contig or scaffold
  type: string
  inputBinding:
    prefix: -i
- id: in__generate_only
  doc: -- generate only scaffolds larger than min length
  type: long
  inputBinding:
    prefix: -l
- id: in__suppress_surrogate
  doc: -- suppress surrogate fragment placement (possibly multiple placements per
    frg)
  type: boolean
  inputBinding:
    prefix: -S
- id: in_other
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dumpCloneMiddles
