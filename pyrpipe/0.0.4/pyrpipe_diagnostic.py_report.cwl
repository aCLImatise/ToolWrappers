class: CommandLineTool
id: ../../../pyrpipe_diagnostic.py_report.cwl
inputs:
- id: in_file_default_same
  doc: 'out file default: same as input logfile'
  type: File
  inputBinding:
    prefix: -o
- id: in_report_output_type
  doc: 'report output type: [md,pdf,html] default: pdf'
  type: string
  inputBinding:
    prefix: -e
- id: in_report_options_f
  doc: 'Report options [(f)ull,fa(i)l,(p)ass] default: f'
  type: string
  inputBinding:
    prefix: -c
- id: in_verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: in_log_file
  doc: The log file generated by pyrpipe
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyrpipe_diagnostic.py
- report
