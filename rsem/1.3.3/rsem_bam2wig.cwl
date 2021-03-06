class: CommandLineTool
id: ../../../rsem_bam2wig.cwl
inputs:
- id: in_no_fractional_weight
  doc: ': If this is set, RSEM will not look for "ZW" tag and each alignment appeared
    in the BAM file has weight 1. Set this if your BAM file is not generated by RSEM.
    Please note that this option must be at the end of the command line.'
  type: boolean
  inputBinding:
    prefix: --no-fractional-weight
- id: in_sorted_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_wig_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_wiggle_name
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
- rsem-bam2wig
