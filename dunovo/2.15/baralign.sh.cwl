class: CommandLineTool
id: ../../../baralign.sh.cwl
inputs:
- id: in_include_alphabeta_betaalpha
  doc: ": Don't include reversed barcodes (alpha+beta -> beta+alpha) in the alignment\
    \ target."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_number_use_default
  doc: ': Number of threads for bowtie and bowtie-build to use (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_number_pass_default
  doc: ": Number to pass to bowtie's --chunkmbs option (default: 512)."
  type: boolean
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- baralign.sh
