class: CommandLineTool
id: ../../../scanpy_cli_cluster.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- cluster
