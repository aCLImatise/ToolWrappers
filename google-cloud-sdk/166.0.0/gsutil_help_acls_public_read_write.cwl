class: CommandLineTool
id: gsutil_help_acls_public_read_write.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: topic
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- help
- acls
- public-read-write