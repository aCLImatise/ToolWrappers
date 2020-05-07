class: CommandLineTool
id: parallel_pick_otus_trie.py.cwl
inputs:
- id: input_fast_a_fp
  doc: full path to input_fasta_fp [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_fp
- id: output_dir
  doc: path to store output files [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_pick_otus_trie.py