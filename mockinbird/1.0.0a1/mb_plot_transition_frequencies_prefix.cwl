class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_plot_transition_frequencies_prefix.cwl
inputs:
- id: coverage
  doc: ''
  type: string
  inputBinding:
    prefix: --coverage
- id: mb_plot_transition_frequencies
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-transition-frequencies
- prefix