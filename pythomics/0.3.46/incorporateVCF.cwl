class: CommandLineTool
id: incorporateVCF.py.cwl
inputs:
- id: p
  doc: Threads to run
  type: string
  inputBinding:
    prefix: -p
- id: f
  doc: '[FASTA], --fasta [FASTA] The fasta file to incorporate changes into.'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: '[OUT], --out [OUT] The file to write resulting fasta file to.'
  type: boolean
  inputBinding:
    prefix: -o
- id: vcf
  doc: The VCF file to use.
  type: string
  inputBinding:
    prefix: --vcf
- id: no_homozygous
  doc: Don't include homozygous variants (default to include)
  type: boolean
  inputBinding:
    prefix: --no-homozygous
- id: heterozygous
  doc: Use heterozygous variants
  type: boolean
  inputBinding:
    prefix: --heterozygous
- id: no_snps
  doc: Don't use SNPs (default to true).
  type: boolean
  inputBinding:
    prefix: --no-snps
- id: dels
  doc: Use Deletions.
  type: boolean
  inputBinding:
    prefix: --dels
- id: ins
  doc: Use Insertions.
  type: boolean
  inputBinding:
    prefix: --ins
- id: individual
  doc: The Individual to use.
  type: string
  inputBinding:
    prefix: --individual
- id: append_chromosome
  doc: Should 'chr' be appended to the chromosome column?.
  type: boolean
  inputBinding:
    prefix: --append-chromosome
outputs: []
cwlVersion: v1.1
baseCommand:
- incorporateVCF.py