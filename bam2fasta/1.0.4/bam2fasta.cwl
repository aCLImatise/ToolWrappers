class: CommandLineTool
id: ../../../bam2fasta.cwl
inputs:
- id: in_command
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam2fasta
