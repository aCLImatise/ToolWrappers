class: CommandLineTool
id: ../../../treebest_subtree.cwl
inputs:
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treebest
- subtree
