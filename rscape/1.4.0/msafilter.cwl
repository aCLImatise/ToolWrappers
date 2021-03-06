class: CommandLineTool
id: ../../../msafilter.cwl
inputs:
- id: in_outdir
  doc: ': specify a directory for all output files'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in__be_verbose
  doc: ': be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_window
  doc: ': window size  (n>0)'
  type: long
  inputBinding:
    prefix: --window
- id: in_slide
  doc: ': window slide  [50]  (n>0)'
  type: long
  inputBinding:
    prefix: --slide
- id: in_one_msa
  doc: ': if file has more than one msa, analyze only the first one'
  type: boolean
  inputBinding:
    prefix: --onemsa
- id: in_filter_seqs_xseqcons
  doc: ': filter out seqs <x*seq_cons residues  (0<x<=1.0)'
  type: double
  inputBinding:
    prefix: -F
- id: in_var_6
  doc: ': require seqs to have < <x> id  [1.0]  (0<x<=1.0)'
  type: double
  inputBinding:
    prefix: -I
- id: in_var_7
  doc: ': require seqs to have >= <x> id  (0<=x<1.0)'
  type: double
  inputBinding:
    prefix: -i
- id: in_t_start
  doc: ': min alignment position to analyze [1..alen]  (n>0)'
  type: long
  inputBinding:
    prefix: --tstart
- id: in_tend
  doc: ': max alignment position to analyze [1..alen]  (n>0)'
  type: long
  inputBinding:
    prefix: --tend
- id: in_consensus
  doc: ': analyze only consensus (seq_cons) positions'
  type: boolean
  inputBinding:
    prefix: --consensus
- id: in_sub_msa
  doc: ': take n random sequences from the alignment, all if NULL  (n>0)'
  type: long
  inputBinding:
    prefix: --submsa
- id: in_n_seq_min
  doc: ': minimum number of sequences in the alignment  (n>0)'
  type: long
  inputBinding:
    prefix: --nseqmin
- id: in_gap_thresh
  doc: ': keep columns with < <x> fraction of gaps  [1.0]  (0<=x<=1)'
  type: double
  inputBinding:
    prefix: --gapthresh
- id: in_mini_d
  doc: ': minimum avgid of the given alignment  (0<x<=1.0)'
  type: double
  inputBinding:
    prefix: --minid
- id: in_max_id
  doc: ': maximum avgid of the given alignment  (0<x<=1.0)'
  type: double
  inputBinding:
    prefix: --maxid
- id: in_in_format
  doc: ': specify format'
  type: string
  inputBinding:
    prefix: --informat
- id: in_out_msa
  doc: ': write msa used to file <f>,'
  type: File
  inputBinding:
    prefix: --outmsa
- id: in_out_map
  doc: ': write map file to <f>'
  type: File
  inputBinding:
    prefix: --outmap
- id: in_seed
  doc: ': set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_msa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: ': specify a directory for all output files'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- msafilter
