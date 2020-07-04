class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/check_compression.cwl
inputs:
- id: input_path
  doc: Path to Fast5 file or directory of Fast5 files
  type: string
  inputBinding:
    prefix: --input_path
- id: check_all_reads
  doc: 'Check all reads in a file individually (default: check only the first read)'
  type: boolean
  inputBinding:
    prefix: --check_all_reads
- id: recursive
  doc: Search recursively through folders for MultiRead fast5 files
  type: boolean
  inputBinding:
    prefix: --recursive
- id: ignore_symlinks
  doc: Ignore symlinks when searching recursively for fast5 files
  type: boolean
  inputBinding:
    prefix: --ignore_symlinks
- id: file_list
  doc: File containing names of files to search in
  type: File
  inputBinding:
    prefix: --file_list
- id: tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: checking
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: compression
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: type
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: raw
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: data
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: fast_five
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- check_compression