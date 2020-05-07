class: CommandLineTool
id: kruskal_wallis.py.cwl
inputs:
- id: input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: design
  doc: Design file.
  type: string
  inputBinding:
    prefix: --design
- id: unique_id
  doc: Name of the column with unique identifiers.
  type: string
  inputBinding:
    prefix: --uniqueID
- id: group
  doc: Name of the column with groups.
  type: string
  inputBinding:
    prefix: --group
- id: summaries
  doc: Summaries file. TSV format.
  type: string
  inputBinding:
    prefix: --summaries
- id: flags
  doc: Flags file. TSV format.
  type: string
  inputBinding:
    prefix: --flags
- id: volcano
  doc: Volcano plot. PDF Format.
  type: string
  inputBinding:
    prefix: --volcano
- id: palette
  doc: Name of the palette to use.
  type: string
  inputBinding:
    prefix: --palette
- id: color
  doc: Name of a valid color scheme on the selected palette
  type: string
  inputBinding:
    prefix: --color
outputs: []
cwlVersion: v1.1
baseCommand:
- kruskal_wallis.py