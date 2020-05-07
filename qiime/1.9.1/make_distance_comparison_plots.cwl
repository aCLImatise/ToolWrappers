class: CommandLineTool
id: make_distance_comparison_plots.py.cwl
inputs:
- id: mapping_fp
  doc: the mapping filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: output_dir
  doc: path to the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: distance_matrix_fp
  doc: 'input distance matrix filepath (i.e. the result of beta_diversity.py). WARNING:
    Only symmetric, hollow distance matrices may be used as input. Asymmetric distance
    matrices, such as those obtained by the UniFrac Gain metric (i.e. beta_diversity.py
    -m unifrac_g), should not be used as input [REQUIRED]'
  type: string
  inputBinding:
    prefix: --distance_matrix_fp
- id: field
  doc: field in the mapping file to make comparisons on [REQUIRED]
  type: string
  inputBinding:
    prefix: --field
- id: comparison_groups
  doc: comma-separated list of field states to compare to every other field state,
    where the list of field states should be in quotes (e.g. "FieldState1,FieldState2,FieldState3")
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --comparison_groups
outputs: []
cwlVersion: v1.1
baseCommand:
- make_distance_comparison_plots.py