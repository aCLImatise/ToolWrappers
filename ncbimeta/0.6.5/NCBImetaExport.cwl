class: CommandLineTool
id: NCBImetaExport.py.cwl
inputs:
- id: database
  doc: Path to the sqlite database generated by NCBImeta.
  type: string
  inputBinding:
    prefix: --database
- id: output_dir
  doc: Output directory.
  type: string
  inputBinding:
    prefix: --outputdir
outputs: []
cwlVersion: v1.1
baseCommand:
- NCBImetaExport.py