class: CommandLineTool
id: ../../../sqStoreCreate.cwl
inputs:
- id: in_load_raw_reads
  doc: load raw reads into new seqStore
  type: string
  inputBinding:
    prefix: -o
- id: in_minlength
  doc: discard reads shorter than L
  type: string
  inputBinding:
    prefix: -minlength
- id: in_genome_size
  doc: expected genome size, for keeping only the longest reads
  type: long
  inputBinding:
    prefix: -genomesize
- id: in_coverage
  doc: desired coverage in long reads
  type: string
  inputBinding:
    prefix: -coverage
- id: in_technology_status
  doc: seqFile1 [seqFile2] [...]
  type: long
  inputBinding:
    prefix: -technology-status
- id: in_pac_bio_raw
  doc: ''
  type: boolean
  inputBinding:
    prefix: -pacbio-raw
- id: in_pac_bio_corrected
  doc: ''
  type: boolean
  inputBinding:
    prefix: -pacbio-corrected
- id: in_pac_bio_trimmed
  doc: ''
  type: boolean
  inputBinding:
    prefix: -pacbio-trimmed
- id: in_nano_pore_raw
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nanopore-raw
- id: in_nano_pore_corrected
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nanopore-corrected
- id: in_nano_pore_trimmed
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nanopore-trimmed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sqStoreCreate
