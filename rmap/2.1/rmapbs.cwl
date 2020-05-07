class: CommandLineTool
id: rmapbs.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q_reads_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: 'output file name '
  type: boolean
  inputBinding:
    prefix: -output
- id: chrom
  doc: 'chromosomes in FASTA file or dir '
  type: boolean
  inputBinding:
    prefix: -chrom
- id: start
  doc: 'index of first read to map '
  type: boolean
  inputBinding:
    prefix: -start
- id: number
  doc: 'number of reads to map '
  type: boolean
  inputBinding:
    prefix: -number
- id: suffix
  doc: 'suffix of chrom files (assumes dir provided) '
  type: boolean
  inputBinding:
    prefix: -suffix
- id: mismatch
  doc: 'maximum allowed mismatches '
  type: boolean
  inputBinding:
    prefix: -mismatch
- id: ambiguous
  doc: 'file to write names of ambiguously mapped reads '
  type: boolean
  inputBinding:
    prefix: -ambiguous
- id: max_map
  doc: 'maximum allowed mappings for a read '
  type: boolean
  inputBinding:
    prefix: -max-map
- id: ag_wild
  doc: 'map using A/G bisulfite wildcards '
  type: boolean
  inputBinding:
    prefix: -ag-wild
- id: clip
  doc: 'clip the specified adaptor '
  type: boolean
  inputBinding:
    prefix: -clip
- id: verbose
  doc: 'print more run info '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- rmapbs