class: CommandLineTool
id: ../../../gctx2gct.cwl
inputs:
- id: in_filename
  doc: ".gctx file that you would like to converted to .gct\n(default: None)"
  type: File
  inputBinding:
    prefix: -filename
- id: in_output_file_path
  doc: "out path/name for output gct file. Default is just to\nmodify the extension\
    \ (default: None)"
  type: File
  inputBinding:
    prefix: -output_filepath
- id: in_verbose
  doc: 'Whether to print a bunch of output. (default: False)'
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_row_an_not_path
  doc: 'Path to annotations file for rows (default: None)'
  type: File
  inputBinding:
    prefix: -row_annot_path
- id: in_col_an_not_path
  doc: "Path to annotations file for columns (default: None)\n"
  type: File
  inputBinding:
    prefix: -col_annot_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_path
  doc: "out path/name for output gct file. Default is just to\nmodify the extension\
    \ (default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_path)
cwlVersion: v1.1
baseCommand:
- gctx2gct
