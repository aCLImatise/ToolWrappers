class: CommandLineTool
id: ../../../hca_auth_put_v1_user_role.cwl
inputs:
- id: in_action
  doc: ''
  type: string
  inputBinding:
    prefix: --action
- id: in_roles
  doc: ''
  type: string
  inputBinding:
    prefix: --roles
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
- put-v1-user-role
