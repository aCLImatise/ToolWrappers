class: CommandLineTool
id: ChorusNGSselect.cwl
inputs:
- id: input
  doc: Input bed format probe file generated by ChorusNGSfilter
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'Output bed format probe file after k-mer score filter. (Default: filtered_output.bed)'
  type: string
  inputBinding:
    prefix: --output
- id: min
  doc: "Minimum k-mer score, score < min value will be dropped. For example: 900.\
    \ Incompatible with parameter '-q/-p' (Default: 0)"
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: "Maximum k-mer score, score > max value will be dropped. For example: 2000.\
    \ Incompatible with parameter '-q/-p' (Default: 10000000)"
  type: long
  inputBinding:
    prefix: --max
- id: min_quantile
  doc: "Filter < min% quantile k-mer score, range from 0 to 1. For example: 0.25 means\
    \ 25% quantile. Incompatible with parameter '-m/-l'. (Default: 0.1)"
  type: long
  inputBinding:
    prefix: --minquantile
- id: max_quantile
  doc: "Filter > max% quantile k-mer score, range from 0 to 1. For example: 0.75 means\
    \ 75% quantile. Incompatible with parameter '-m/-l'. (Default: 0.9)"
  type: long
  inputBinding:
    prefix: --maxquantile
- id: both_strand
  doc: Keep both + and - strand probes. (Default is True)
  type: boolean
  inputBinding:
    prefix: --bothstrand
- id: single_strand
  doc: Keep only + strand probes. Incompatible with parameter '-bs/--bothstrand'
  type: boolean
  inputBinding:
    prefix: --singlestrand
- id: distance
  doc: 'Minimum distance between two adjacent probes. (Default: 25)'
  type: string
  inputBinding:
    prefix: --distance
outputs: []
cwlVersion: v1.1
baseCommand:
- ChorusNGSselect