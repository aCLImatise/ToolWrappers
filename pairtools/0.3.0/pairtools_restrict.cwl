class: CommandLineTool
id: ../../../pairtools_restrict.cwl
inputs:
- id: in_frags
  doc: "a tab-separated BED file with the positions of\nrestriction fragments (chrom,\
    \ start, end). Can be\ngenerated using cooler digest.  [required]"
  type: File
  inputBinding:
    prefix: --frags
- id: in_output
  doc: "output .pairs/.pairsam file. If the path ends with\n.gz/.lz4, the output is\
    \ compressed by pbgzip/lz4c. By\ndefault, the output is printed into stdout."
  type: File
  inputBinding:
    prefix: --output
- id: in_nproc_in
  doc: "Number of processes used by the auto-guessed input\ndecompressing command.\
    \  [default: 3]"
  type: long
  inputBinding:
    prefix: --nproc-in
- id: in_nproc_out
  doc: "Number of processes used by the auto-guessed output\ncompressing command.\
    \  [default: 8]"
  type: long
  inputBinding:
    prefix: --nproc-out
- id: in_cmd_in
  doc: "A command to decompress the input file. If provided,\nfully overrides the\
    \ auto-guessed command. Does not work\nwith stdin. Must read input from stdin\
    \ and print output\ninto stdout. EXAMPLE: pbgzip -dc -n 3"
  type: File
  inputBinding:
    prefix: --cmd-in
- id: in_cmd_out
  doc: "A command to compress the output file. If provided,\nfully overrides the auto-guessed\
    \ command. Does not work\nwith stdout. Must read input from stdin and print\n\
    output into stdout. EXAMPLE: pbgzip -c -n 8"
  type: File
  inputBinding:
    prefix: --cmd-out
- id: in_the
  doc: input is decompressed by pbgzip/lz4c. By default, the input is read
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output .pairs/.pairsam file. If the path ends with\n.gz/.lz4, the output is\
    \ compressed by pbgzip/lz4c. By\ndefault, the output is printed into stdout."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- pairtools
- restrict
