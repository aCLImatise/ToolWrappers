class: CommandLineTool
id: varlociraptor_preprocess_help_For_more_try.cwl
inputs:
- id: information
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: try
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- preprocess
- help
- For
- more
- try