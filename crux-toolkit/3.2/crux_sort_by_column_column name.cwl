class: CommandLineTool
id: crux_sort_by_column_column name.cwl
inputs:
- id: tsv_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: column_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- sort-by-column
- column name