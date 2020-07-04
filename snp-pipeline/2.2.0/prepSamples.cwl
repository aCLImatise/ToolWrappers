class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prepSamples.sh.cwl
inputs:
- id: force
  doc: 'Force processing even when result files already exist and are newer than inputs
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: string
  inputBinding:
    prefix: --verbose
- id: reference_file
  doc: Relative or absolute path to the reference fasta file
  type: string
  inputBinding:
    position: 0
- id: sample_dir
  doc: Relative or absolute directory of the sample
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- prepSamples.sh