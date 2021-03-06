class: CommandLineTool
id: ../../../hal2fasta.cwl
inputs:
- id: in_cache_bytes
  doc: ":   maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':     number of metadata slots in hdf5 cache [default = 113]'
  type: long
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":     number of regular slots in hdf5 cache.  should be a prime\nnumber ~=\
    \ 10 * DefaultCacheRDCBytes / chunk [default =\n599999]"
  type: long
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':      w0 parameter fro hdf5 cache [default = 0.75]'
  type: long
  inputBinding:
    prefix: --cacheW0
- id: in_in_memory
  doc: ":             load all data in memory (and disable hdf5 cache) [default =\n\
    0]"
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: in_length
  doc: ":       length of the reference genome (or sequence if specified) to\nconvert.\
    \  If set to 0, the entire thing is converted [default\n= 0]"
  type: long
  inputBinding:
    prefix: --length
- id: in_linewidth
  doc: ':    Line width for output [default = 80]'
  type: long
  inputBinding:
    prefix: --lineWidth
- id: in_out_f_a_path
  doc: ':    output fasta file (stdout if none) [default = stdout]'
  type: File
  inputBinding:
    prefix: --outFaPath
- id: in_sequence
  doc: ":     sequence name to export (all sequences by default) [default =\n\"\"]"
  type: string
  inputBinding:
    prefix: --sequence
- id: in_start
  doc: ":        coordinate within reference genome (or sequence if specified)\nto\
    \ start at [default = 0]\n"
  type: long
  inputBinding:
    prefix: --start
- id: in_in_hal_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f_a_path
  doc: ':    output fasta file (stdout if none) [default = stdout]'
  type: File
  outputBinding:
    glob: $(inputs.in_out_f_a_path)
cwlVersion: v1.1
baseCommand:
- hal2fasta
