class: CommandLineTool
id: ../../../drtext.cwl
inputs:
- id: in_resources
  doc: ': enter resource value: Error: Unable to get reply from user - end of standard
    input'
  type: boolean
  inputBinding:
    prefix: -resources
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drtext
