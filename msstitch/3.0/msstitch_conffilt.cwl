class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msstitch_conffilt.cwl
inputs:
- id: input_file_format
  doc: Input file of {} format
  type: string
  inputBinding:
    prefix: -i
- id: directory_to_output
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: output_file
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: confidence_col
  doc: Confidence column number or name in the tsv file. First column has number 1.
  type: string
  inputBinding:
    prefix: --confidence-col
- id: conf_col_pattern
  doc: Text pattern to identify column in table on which confidence filtering should
    be done. Use in case of not using standard {} column
  type: string
  inputBinding:
    prefix: --confcolpattern
- id: confidence_lvl
  doc: Confidence cutoff level as a floating point number
  type: string
  inputBinding:
    prefix: --confidence-lvl
- id: confidence_better
  doc: Confidence type to define if higher or lower score is better. One of [higher,
    lower]
  type: string
  inputBinding:
    prefix: --confidence-better
- id: unroll
  doc: PSM table from Mzid2TSV contains either one PSM per line with all the proteins
    of that shared peptide on the same line (not unrolled, default), or one PSM/protein
    match per line where each protein from that shared peptide gets its own line (unrolled).
  type: boolean
  inputBinding:
    prefix: --unroll
outputs: []
cwlVersion: v1.1
baseCommand:
- msstitch
- conffilt