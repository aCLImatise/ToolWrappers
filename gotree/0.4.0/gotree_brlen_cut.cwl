class: CommandLineTool
id: ../../../gotree_brlen_cut.cwl
inputs:
- id: in_max_length
  doc: Length cutoff. Branches with length greater than or equal to this cutoff are
    considered removed (default 0.5)
  type: double
  inputBinding:
    prefix: --max-length
- id: in_output
  doc: Output file with groups of tips/connected components (default "stdout")
  type: File
  inputBinding:
    prefix: --output
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string
  inputBinding:
    prefix: --format
- id: in_input
  doc: Input tree (default "stdin")
  type: string
  inputBinding:
    prefix: --input
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (Max=8) (default 1)
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file with groups of tips/connected components (default "stdout")
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- gotree
- brlen
- cut
