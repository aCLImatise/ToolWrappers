class: CommandLineTool
id: GenomeBaser_OPTIONS_OUT_DATABASE_LOCATION.cwl
inputs:
- id: genus
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: species
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_database_location
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- GenomeBaser
- OPTIONS
- OUT_DATABASE_LOCATION