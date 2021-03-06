class: CommandLineTool
id: ../../../_fpars.cwl
inputs:
- id: in_weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: in_method
  doc: "menu       [Wagner] Choose the parsimony method to use\n(Values: w (Wagner);\
    \ c (Camin-Sokal))"
  type: boolean
  inputBinding:
    prefix: -method
- id: in_max_trees
  doc: "integer    [100] Number of trees to save (Integer from\n1 to 1000000)"
  type: boolean
  inputBinding:
    prefix: -maxtrees
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -outgrno
- id: in_do_threshold
  doc: toggle     [N] Use threshold parsimony
  type: boolean
  inputBinding:
    prefix: -dothreshold
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
- id: in_step_box
  doc: boolean    [N] Print steps at each site
  type: boolean
  inputBinding:
    prefix: -stepbox
- id: in_an_cseq
  doc: boolean    [N] Print states at all nodes of tree
  type: boolean
  inputBinding:
    prefix: -ancseq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _fpars
