class: CommandLineTool
id: ../../../deblur_build_biom_table.cwl
inputs:
- id: in_min_reads
  doc: "In output biom table - keep only sequences\nappearing at least min-reads in\
    \ all samples\ncombined.  [default: 10]"
  type: long
  inputBinding:
    prefix: --min-reads
- id: in_file_type
  doc: "ending of files to be added to the biom table\n[default: .fasta.trim.derep.no_artifacts.msa.debl\n\
    ur.no_chimeras]"
  type: string
  inputBinding:
    prefix: --file_type
- id: in_log_level
  doc: RANGE  Level of messages for log file(range 1-debug to
  type: long
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: 'log file name  [default: deblur.log]'
  type: File
  inputBinding:
    prefix: --log-file
- id: in_str
  doc: the files type to add to the
  type: string
  inputBinding:
    position: 0
- id: in_table
  doc: (default='.trim.derep.no_artifacts.msa.deblur.no_chimeras',   can
  type: string
  inputBinding:
    position: 1
- id: in_five_critical
  doc: '[default: 2]'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deblur
- build-biom-table
