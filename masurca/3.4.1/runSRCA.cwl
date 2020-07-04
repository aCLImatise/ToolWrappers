class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/runSRCA.pl.cwl
inputs:
- id: output
  doc: Assembly script (assemble.sh)
  type: boolean
  inputBinding:
    prefix: --output
- id: generate
  doc: Generate example configuration file
  type: boolean
  inputBinding:
    prefix: --generate
- id: path
  doc: Prepend to PATH in assembly script
  type: boolean
  inputBinding:
    prefix: --path
- id: ld_library_path
  doc: Prepend to LD_LIBRARY_PATH in assembly script
  type: boolean
  inputBinding:
    prefix: --ld-library-path
- id: skip_checking
  doc: Skip checking availability of other executables
  type: boolean
  inputBinding:
    prefix: --skip-checking
outputs: []
cwlVersion: v1.1
baseCommand:
- runSRCA.pl