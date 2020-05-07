class: CommandLineTool
id: mmseqs_msa2profile.cwl
inputs:
- id: comp_bias_corr
  doc: '1               correct for locally biased amino acid composition [0,1]     '
  type: boolean
  inputBinding:
    prefix: --comp-bias-corr
- id: match_mode
  doc: '0               0: Columns that have a residue in the first sequence are kept,
    1: columns that have a residue in --match-ratio of all sequences are kept.'
  type: boolean
  inputBinding:
    prefix: --match-mode
- id: match_ratio
  doc: 0.500           columns that have a residue in this ratio of all sequences
    are kept
  type: boolean
  inputBinding:
    prefix: --match-ratio
- id: pc_a
  doc: '0.000           pseudo count admixture strength                             '
  type: boolean
  inputBinding:
    prefix: --pca
- id: pcb
  doc: '1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)'
  type: boolean
  inputBinding:
    prefix: --pcb
- id: wg
  doc: 'false           use global sequence weighting for profile calculation       '
  type: boolean
  inputBinding:
    prefix: --wg
- id: filter_msa
  doc: '1               filter msa: 0: do not filter, 1: filter                     '
  type: boolean
  inputBinding:
    prefix: --filter-msa
- id: cov
  doc: 0.000           filter output MSAs using min. fraction of query residues covered
    by matched sequences [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --cov
- id: qid
  doc: 0.000           reduce diversity of output MSAs using min.seq. identity with
    query sequences [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --qid
- id: qsc
  doc: -20.000         reduce diversity of output MSAs using min. score per aligned
    residue with query sequences [-50.0,100.0]
  type: boolean
  inputBinding:
    prefix: --qsc
- id: max_seq_id
  doc: 0.900           reduce redundancy of output MSA using max. pairwise sequence
    identity [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --max-seq-id
- id: diff
  doc: 1000            filter MSAs by selecting most diverse set of sequences, keeping
    at least this many seqs in each MSA block of length 50
  type: boolean
  inputBinding:
    prefix: --diff
- id: msa_type
  doc: '2               MSA Type: cA3M 0, A3M 1, FASTA 2                            '
  type: boolean
  inputBinding:
    prefix: --msa-type
- id: sub_mat
  doc: 'blosum62.out    amino acid substitution matrix file                         '
  type: boolean
  inputBinding:
    prefix: --sub-mat
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- msa2profile