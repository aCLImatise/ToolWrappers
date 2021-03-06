class: CommandLineTool
id: ../../../tombo_filter_raw_signal_matching.cwl
inputs:
- id: in_var_0
  doc: ''
  type: boolean
  inputBinding:
    prefix: --signal-matching-score
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long
  inputBinding:
    prefix: --corrected-group
- id: in_quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_var_4
  doc: '[--corrected-group CORRECTED_GROUP]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tombo
- filter
- raw_signal_matching
