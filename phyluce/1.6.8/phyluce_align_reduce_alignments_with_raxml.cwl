class: CommandLineTool
id: phyluce_align_reduce_alignments_with_raxml.cwl
inputs:
- id: alignments
  doc: Input folder of alignments
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: Output folder for reduced alignments
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: cores
  doc: The number of compute cores to use
  type: string
  inputBinding:
    prefix: --cores
- id: verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_reduce_alignments_with_raxml