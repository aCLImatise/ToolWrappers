class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/knock_knock_design_primers.cwl
inputs:
- id: project_directory
  doc: the base directory to store input data, reference annotations, and analysis
    output for a project
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- knock-knock
- design-primers