class: CommandLineTool
id: ../../../tree.py.cwl
inputs:
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_nb_cpus
  doc: 'The maximum number of CPUs used. [Default: 1]'
  type: long
  inputBinding:
    prefix: --nb-cpus
- id: in_input_otu
  doc: "Path to input fasta file of OTU. Warning: FROGS Tree\nis only working on less\
    \ than 10000 sequences!"
  type: File
  inputBinding:
    prefix: --input-otu
- id: in_biom_file
  doc: Path to the abundance biom file.
  type: File
  inputBinding:
    prefix: --biomfile
- id: in_out_tree
  doc: "Path to store resulting Newick tree file. [Default:\ntree.nwk]"
  type: File
  inputBinding:
    prefix: --out-tree
- id: in_html
  doc: "Path to store resulting html file. [Default:\nsummary.html]"
  type: File
  inputBinding:
    prefix: --html
- id: in_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_log_file)
cwlVersion: v1.1
baseCommand:
- tree.py
