class: CommandLineTool
id: ../../../anvi_gen_gene_consensus_sequences.cwl
inputs:
- id: in_compress_samples
  doc: "Normally all samples with variation will have their\nown consensus sequence.\
    \ If this flag is provided, the\ncoverages from each sample of interest will be\
    \ summed\nand only a single consenus sequence for each\ngene/contig will be output."
  type: boolean
  inputBinding:
    prefix: --compress-samples
- id: in_profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_gene_caller_ids
  doc: "Gene caller ids. Multiple of them can be declared\nseparated by a delimiter\
    \ (the default is a comma). In\nanvi-gen-variability-profile, if you declare nothing\n\
    you will get all genes matching your other filtering\ncriteria. In other programs,\
    \ you may get everything,\nnothing, or an error. It really depends on the\nsituation.\
    \ Fortunately, mistakes are cheap, so it's\nworth a try."
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: in_genes_of_interest
  doc: "A file with anvi'o gene caller IDs. There should be\nonly one column in the\
    \ file, and each line should\ncorrespond to a unique gene caller id (without a\n\
    column header)."
  type: File
  inputBinding:
    prefix: --genes-of-interest
- id: in_samples_of_interest
  doc: "A file with samples names. There should be only one\ncolumn in the file, and\
    \ each line should correspond to\na unique sample name (without a column header)."
  type: File
  inputBinding:
    prefix: --samples-of-interest
- id: in_output_file
  doc: "The output file name. The boring default is\n\"genes.fa\". You can change\
    \ the output file format to a\nTAB-delimited file using teh flag `--tab-delimited`,\n\
    in which case please do not forget to change the file\nname, too."
  type: File
  inputBinding:
    prefix: --output-file
- id: in_tab_delimited
  doc: Use the TAB-delimited format for the output file.
  type: File
  inputBinding:
    prefix: --tab-delimited
- id: in_engine
  doc: Variability engine. The default is 'NT'.
  type: string
  inputBinding:
    prefix: --engine
- id: in_contigs_mode
  doc: "Use this flag to output consensus sequences of\ncontigs, instead of the default,\
    \ which is genes\n"
  type: boolean
  inputBinding:
    prefix: --contigs-mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "The output file name. The boring default is\n\"genes.fa\". You can change\
    \ the output file format to a\nTAB-delimited file using teh flag `--tab-delimited`,\n\
    in which case please do not forget to change the file\nname, too."
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_tab_delimited
  doc: Use the TAB-delimited format for the output file.
  type: File
  outputBinding:
    glob: $(inputs.in_tab_delimited)
cwlVersion: v1.1
baseCommand:
- anvi-gen-gene-consensus-sequences
