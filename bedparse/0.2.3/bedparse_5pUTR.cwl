class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedparse_5pUTR.cwl
inputs:
- id: bed_file
  doc: Path to the BED file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- 5pUTR