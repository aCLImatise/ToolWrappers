class: CommandLineTool
id: ../../../lyner_cluster.cwl
inputs:
- id: in_method
  doc: '[dbscan|k_means|mean_shift]'
  type: boolean
  inputBinding:
    prefix: --method
- id: in_num_clusters
  doc: The exact number of clusters to build.
  type: long
  inputBinding:
    prefix: --num-clusters
- id: in_mode_config
  doc: ''
  type: string
  inputBinding:
    prefix: --mode-config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- cluster
