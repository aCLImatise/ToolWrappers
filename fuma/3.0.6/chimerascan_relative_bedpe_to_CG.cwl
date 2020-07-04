class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chimerascan_relative_bedpe_to_CG.cwl
inputs:
- id: gene_annotation
  doc: gene_features.txt file used by chimersacan
  type: string
  inputBinding:
    prefix: --gene-annotation
- id: output
  doc: output filename; '-' for stdout
  type: string
  inputBinding:
    prefix: --output
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: input
  doc: Chimerascan's relative BEDPE file (e.g. discordant_reads.srt.bedpe or tmp_chimeras.sorted3p.bedpe)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chimerascan-relative-bedpe-to-CG