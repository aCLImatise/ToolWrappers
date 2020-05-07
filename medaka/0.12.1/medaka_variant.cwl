class: CommandLineTool
id: medaka_variant.cwl
inputs:
- id: ref_fast_a
  doc: Reference sequence .fasta file.
  type: string
  inputBinding:
    position: 0
- id: inputs
  doc: Consensus .hdf files.
  type: string
  inputBinding:
    position: 1
- id: output
  doc: Output .vcf.
  type: string
  inputBinding:
    position: 2
- id: debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: regions
  doc: 'Limit variant calling to these reference names (default: None)'
  type: string[]
  inputBinding:
    prefix: --regions
- id: verbose
  doc: 'Populate VCF info fields. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- variant