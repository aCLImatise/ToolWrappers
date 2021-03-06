class: CommandLineTool
id: ../../../gen_rand_samp.py.cwl
inputs:
- id: in_fastq_filenames_separated
  doc: Fastq filenames separated by commas that contain the first
  type: boolean
  inputBinding:
    prefix: --1
- id: in_output_dir
  doc: Base output directory.
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_debug_level
  doc: determines how much debug output.
  type: boolean
  inputBinding:
    prefix: --debug_level
- id: in_num_trials
  doc: ''
  type: long
  inputBinding:
    prefix: --num_trials
- id: in_sample_size
  doc: ''
  type: long
  inputBinding:
    prefix: --sample_size
- id: in_input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: in_two
  doc: ''
  type: long
  inputBinding:
    prefix: --2
- id: in_samples
  doc: ''
  type: string
  inputBinding:
    prefix: --samples
- id: in_trials
  doc: ''
  type: string
  inputBinding:
    prefix: --trials
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Base output directory.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- gen_rand_samp.py
