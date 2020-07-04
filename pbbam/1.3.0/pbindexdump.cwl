class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pbindexdump.cwl
inputs:
- id: format
  doc: 'STR   Output format. Valid choices: (json, cpp). [json]'
  type: boolean
  inputBinding:
    prefix: --format
- id: json_indent_level
  doc: INT   JSON indent level. [4]
  type: boolean
  inputBinding:
    prefix: --json-indent-level
- id: json_raw
  doc: Print fields in a layout that more closely reflects the PBI file format (per-field
    columns, not per-record objects.
  type: boolean
  inputBinding:
    prefix: --json-raw
- id: input_do_tba_mdot_pbi
  doc: FILE  Input PBI file. If not provided, stdin will be used as input.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pbindexdump