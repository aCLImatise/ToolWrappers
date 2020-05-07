class: CommandLineTool
id: generate_enlarge.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the list of allowed candidate fusion genes
    is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the list of allowed candidate fusion genes is generated.
    Default is '.'.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_enlarge.py