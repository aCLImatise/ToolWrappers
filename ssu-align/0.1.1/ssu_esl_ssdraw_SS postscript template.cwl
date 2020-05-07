class: CommandLineTool
id: ssu_esl_ssdraw_SS postscript template.cwl
inputs:
- id: msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ss_postscript_template
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_postscript_file_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-ssdraw
- SS postscript template