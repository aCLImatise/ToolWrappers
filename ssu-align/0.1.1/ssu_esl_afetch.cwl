class: CommandLineTool
id: ssu_esl_afetch.cwl
inputs:
- id: f
  doc: ': second cmdline arg is a file of names to retrieve'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: ': output alignments to file <f> instead of stdout'
  type: string
  inputBinding:
    prefix: -o
- id: o
  doc: ': output alignment to file named <key>'
  type: boolean
  inputBinding:
    prefix: -O
- id: in_format
  doc: ': specify that <msafile> is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: index
  doc: ': index the <msafile>, creating <msafile>.ssi'
  type: boolean
  inputBinding:
    prefix: --index
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-afetch