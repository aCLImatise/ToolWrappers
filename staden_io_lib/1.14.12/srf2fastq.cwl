class: CommandLineTool
id: srf2fastq.cwl
inputs:
- id: c
  doc: Use calibrated quality values (CNF1)
  type: boolean
  inputBinding:
    prefix: -c
- id: c
  doc: Ignore bad reads
  type: boolean
  inputBinding:
    prefix: -C
- id: s
  doc: Split the fastq files, one for each region in the REGN chunk. The files are
    named root_ + the name of the region.
  type: string
  inputBinding:
    prefix: -s
- id: s
  doc: Sequentially display regions rather than append them into one long read. (conflicts
    with -s)
  type: boolean
  inputBinding:
    prefix: -S
- id: n
  doc: 'Ignore REGN names: use region index. i.e. root_1, root_2 etc.'
  type: boolean
  inputBinding:
    prefix: -n
- id: a
  doc: Append region index to name i.e. name/1, name/2 etc.
  type: boolean
  inputBinding:
    prefix: -a
- id: e
  doc: "Include explicit sequence: the names of the regions of type 'E'"
  type: boolean
  inputBinding:
    prefix: -e
- id: r
  doc: 1,2.. In a comma separated list, specify which regions to reverse, counting
    from 1. This will reverse complement the read and reverse the quality scores.
    (requires -s or -S)
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- srf2fastq