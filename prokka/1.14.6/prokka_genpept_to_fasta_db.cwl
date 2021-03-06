class: CommandLineTool
id: ../../../prokka_genpept_to_fasta_db.cwl
inputs:
- id: in_verbose
  doc: "!      Verbose progress (default '0')."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_format
  doc: Input format (default 'genbank').
  type: string
  inputBinding:
    prefix: --format
- id: in_sep
  doc: Separator between EC/gene/product (default '~~~').
  type: string
  inputBinding:
    prefix: --sep
- id: in_blank
  doc: Replace empty EC/gene/product with this (default '').
  type: string
  inputBinding:
    prefix: --blank
- id: in_pseudo
  doc: "!       Include /pseudo genes (default '0')."
  type: boolean
  inputBinding:
    prefix: --pseudo
- id: in_hypo
  doc: "!         Include 'hypothetical protein' genes (default '0')."
  type: boolean
  inputBinding:
    prefix: --hypo
- id: in_min_len
  doc: Minimum peptide length (default '0').
  type: long
  inputBinding:
    prefix: --minlen
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prokka-genpept_to_fasta_db
