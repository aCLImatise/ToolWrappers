class: CommandLineTool
id: ../../../halCoverage.cwl
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
- id: in_num_samples
  doc: ":   Number of bases to sample when calculating coverage [default\n= 1000000]"
  type: long
  inputBinding:
    prefix: --numSamples
- id: in_seed
  doc: ':         Random seed (integer) [default = 0]'
  type: long
  inputBinding:
    prefix: --seed
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- halCoverage
