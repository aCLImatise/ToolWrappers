class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prepDE.py.cwl
inputs:
- id: input
  doc: 'the parent directory of the sample sub-directories or a textfile listing the
    paths to GTF files [default: ballgown]'
  type: string
  inputBinding:
    prefix: --input
- id: where_output_default
  doc: 'where to output the gene count matrix [default: gene_count_matrix.csv'
  type: string
  inputBinding:
    prefix: -g
- id: where_output_matrix
  doc: 'where to output the transcript count matrix [default: transcript_count_matrix.csv]'
  type: string
  inputBinding:
    prefix: -t
- id: length
  doc: 'the average read length [default: 75]'
  type: long
  inputBinding:
    prefix: --length
- id: pattern
  doc: a regular expression that selects the sample subdirectories
  type: string
  inputBinding:
    prefix: --pattern
- id: cluster
  doc: whether to cluster genes that overlap with different gene IDs, ignoring ones
    with geneID pattern (see below)
  type: boolean
  inputBinding:
    prefix: --cluster
- id: string
  doc: 'if a different prefix is used for geneIDs assigned by StringTie [default:
    MSTRG]'
  type: string
  inputBinding:
    prefix: --string
- id: key
  doc: 'if clustering, what prefix to use for geneIDs assigned by this script [default:
    prepG]'
  type: string
  inputBinding:
    prefix: --key
- id: legend
  doc: 'if clustering, where to output the legend file mapping transcripts to assigned
    geneIDs [default: legend.csv]'
  type: string
  inputBinding:
    prefix: --legend
outputs: []
cwlVersion: v1.1
baseCommand:
- prepDE.py