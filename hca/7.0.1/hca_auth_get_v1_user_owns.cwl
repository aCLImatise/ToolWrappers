class: CommandLineTool
id: ../../../hca_auth_get_v1_user_owns.cwl
inputs:
- id: in_user_id
  doc: User ID (email).
  type: string
  inputBinding:
    prefix: --user-id
- id: in_next_token
  doc: ''
  type: string
  inputBinding:
    prefix: --next-token
- id: in_per_page
  doc: ''
  type: string
  inputBinding:
    prefix: --per-page
- id: in_resource_type
  doc: ''
  type: string
  inputBinding:
    prefix: --resource-type
- id: in_no_paginate
  doc: Do not automatically page the responses
  type: boolean
  inputBinding:
    prefix: --no-paginate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- get-v1-user-owns
