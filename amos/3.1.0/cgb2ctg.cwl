class: CommandLineTool
id: cgb2ctg.cwl
inputs:
- id: extension
  doc: otherwise -i and -o are those specified in the command line if -i is provided
    the filename must end in .cgb
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cgb2ctg