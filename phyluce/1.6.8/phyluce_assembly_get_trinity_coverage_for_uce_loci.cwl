class: CommandLineTool
id: ../../../phyluce_assembly_get_trinity_coverage_for_uce_loci.cwl
inputs:
- id: in_locus_db
  doc: ''
  type: string
  inputBinding:
    prefix: --locus-db
- id: in_directory_containing_assemblies
  doc: The directory containing the assemblies
  type: Directory
  inputBinding:
    prefix: --assemblies
- id: in_output_file_containing
  doc: "The output file containing taxa and loci in\ncomplete/incomplete matrices\
    \ generated by\nget_match_counts.py."
  type: File
  inputBinding:
    prefix: --match-count-output
- id: in_type
  doc: "Whether to compute stats on trimmed or untrimmed UCE\ndata."
  type: string
  inputBinding:
    prefix: --type
- id: in_exclude
  doc: A list of assemblies to ignore.
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_output
  doc: The output directory to hold the UCE coverage files
  type: Directory
  inputBinding:
    prefix: --output
- id: in_resume
  doc: The output directory in which to resume after a
  type: Directory
  inputBinding:
    prefix: --resume
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
- id: in__matchcountoutput
  doc: --match-count-output
  type: string
  inputBinding:
    position: 0
- id: in__type
  doc: --type
  type: string
  inputBinding:
    position: 1
- id: in_failure_dot
  doc: --verbosity {INFO,WARN,CRITICAL}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_containing
  doc: "The output file containing taxa and loci in\ncomplete/incomplete matrices\
    \ generated by\nget_match_counts.py."
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_containing)
- id: out_output
  doc: The output directory to hold the UCE coverage files
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_resume
  doc: The output directory in which to resume after a
  type: Directory
  outputBinding:
    glob: $(inputs.in_resume)
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_trinity_coverage_for_uce_loci
