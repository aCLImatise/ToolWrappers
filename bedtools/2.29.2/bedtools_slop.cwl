class: CommandLineTool
id: ../../../bedtools_slop.cwl
inputs:
- id: in_increase_bedgffvcf_pairs
  doc: "Increase the BED/GFF/VCF entry -b base pairs in each direction.\n- (Integer)\
    \ or (Float, e.g. 0.1) if used with -pct."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_number_subtract_subtract
  doc: "The number of base pairs to subtract from the start coordinate.\n- (Integer)\
    \ or (Float, e.g. 0.1) if used with -pct."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_number_add_add
  doc: "The number of base pairs to add to the end coordinate.\n- (Integer) or (Float,\
    \ e.g. 0.1) if used with -pct."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_define_l_r_based
  doc: "Define -l and -r based on strand.\nE.g. if used, -l 500 for a negative-stranded\
    \ feature,\nit will add 500 bp downstream.  Default = false."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_pct
  doc: "Define -l and -r as a fraction of the feature's length.\nE.g. if used on a\
    \ 1000bp feature, -l 0.50,\nwill add 500 bp \"upstream\".  Default = false."
  type: boolean
  inputBinding:
    prefix: -pct
- id: in_header
  doc: the header from the input file prior to results.
  type: File
  inputBinding:
    prefix: -header
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_chr_one
  doc: '249250621'
  type: long
  inputBinding:
    position: 0
- id: in_chr_two
  doc: '243199373'
  type: long
  inputBinding:
    position: 1
- id: in_chr_one_eight_gl_zero_zero_zero_two_zero_seven_random
  doc: '4262'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedtools
- slop
