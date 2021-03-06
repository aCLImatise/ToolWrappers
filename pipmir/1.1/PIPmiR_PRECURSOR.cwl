class: CommandLineTool
id: ../../../PIPmiR_PRECURSOR.cwl
inputs:
- id: in_file_putative_mirnas
  doc: File of putative miRNAs in .bed format
  type: File
  inputBinding:
    prefix: -b
- id: in_version_genome_aligned
  doc: .2bit version of the genome against which the reads were aligned
  type: File
  inputBinding:
    prefix: -t
- id: in_basename_output_files
  doc: basename of output files
  type: string
  inputBinding:
    prefix: -o
- id: in_minimum_size_precursor
  doc: 'Minimum size for a precursor sequence (Default: 50)'
  type: long
  inputBinding:
    prefix: -l
- id: in_maximum_size_precursor
  doc: 'Maximum size for a precursor sequence (Default: 500)'
  type: long
  inputBinding:
    prefix: -L
- id: in_step_size_calculating
  doc: 'Step size for calculating precursor sequence (Default: 2)'
  type: long
  inputBinding:
    prefix: -s
- id: in_number_threads_pipmir
  doc: 'Number of threads the PIPmiR can use (Default: 1)'
  type: long
  inputBinding:
    prefix: -p
- id: in_maximum_amount_memory
  doc: 'Maximum amount of memory PIPmiR can use (Default: 4G)'
  type: long
  inputBinding:
    prefix: -X
- id: in_location_rnafold_default
  doc: 'Location of RNAfold (Default: /home/dc97/bin/RNAfold)'
  type: long
  inputBinding:
    prefix: -R
- id: in_creates_log_file
  doc: Creates a log file of PIPmiR results at <output_header>_log.csv
  type: boolean
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PIPmiR
- PRECURSOR
