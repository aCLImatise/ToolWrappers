class: CommandLineTool
id: samtools_flagstat.cwl
inputs:
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- flagstat