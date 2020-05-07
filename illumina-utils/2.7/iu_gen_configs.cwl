class: CommandLineTool
id: iu_gen_configs.cwl
inputs:
- id: file
  doc: TAB-delimited file to describe where samples are. The header line should be
    "sample", "r1", and "r2". Each row should list the sample name in the first column,
    and full path for r1 and r2. This output is automatically generated by the iu-demultiplex
    script.
  type: File
  inputBinding:
    position: 0
- id: r1_prefix
  doc: Prefix for Read 1 to be put in every config file.
  type: string
  inputBinding:
    prefix: --r1-prefix
- id: r2_prefix
  doc: Prefix for Read 2.
  type: string
  inputBinding:
    prefix: --r2-prefix
- id: e_mail
  doc: E-mail address (currently is not used for anything)
  type: string
  inputBinding:
    prefix: --e-mail
- id: output_dir
  doc: Directory for output storage. INI files will also be generated in this directory.
  type: Directory
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-gen-configs