class: CommandLineTool
id: ../../../exp_convert_entrez2gene.py.cwl
inputs:
- id: in_expression_file
  doc: The expression file.
  type: File
  inputBinding:
    prefix: --expression-file
- id: in_gene_file
  doc: "The gene file (e.g., generated by the\nensembl_extract_protein_coding_genes.py\
    \ script)."
  type: File
  inputBinding:
    prefix: --gene-file
- id: in_entrez_two_gene_file
  doc: "The entrez2gene file (.e.g., generated by the\nncbi_extract_entrez2gene.py\
    \ script)."
  type: File
  inputBinding:
    prefix: --entrez2gene-file
- id: in_output_file
  doc: The output file.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_strip_affy_suffix
  doc: "Strip the suffix \"_at\" from all Entrez IDs.\n(For use in affymetrix microarray\
    \ pipeline.)"
  type: boolean
  inputBinding:
    prefix: --strip-affy-suffix
- id: in_log_file
  doc: Path of log file (if specified, report to stdout AND file.
  type: File
  inputBinding:
    prefix: --log-file
- id: in_quiet
  doc: Only output errors and warnings.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Enable verbose output. Ignored if --quiet is specified.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: The output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- exp_convert_entrez2gene.py
