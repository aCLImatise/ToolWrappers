class: CommandLineTool
id: ../../../hca_auth_put_v1_user_policy.cwl
inputs:
- id: in_policy
  doc: ''
  type: string
  inputBinding:
    prefix: --policy
- id: in_user_id
  doc: User ID (email).
  type: string
  inputBinding:
    prefix: --user-id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- auth
- put-v1-user-policy
