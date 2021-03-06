class: CommandLineTool
id: ../../../vtools_gcoverage.cwl
inputs:
- id: in_input_gvc_f
  doc: Path to input VCF file  [required]
  type: File
  inputBinding:
    prefix: --input-gvcf
- id: in_ref_flat_file
  doc: Path to refFlat file  [required]
  type: File
  inputBinding:
    prefix: --refflat-file
- id: in_per_exon
  doc: / --per-transcript  Collect metrics per exon or per transcript
  type: boolean
  inputBinding:
    prefix: --per-exon
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools-gcoverage
