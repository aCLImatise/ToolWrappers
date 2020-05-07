class: CommandLineTool
id: runAssembly.sh.cwl
inputs:
- id: ins
  doc: single read filenames (comma separated fasta/fastq/fastq.gz files).
  type: boolean
  inputBinding:
    prefix: -inS
- id: in1
  doc: forward paired read filename (single fasta/fastq/fastq.gz file).
  type: boolean
  inputBinding:
    prefix: -in1
- id: in2
  doc: reverse paired read filename (single fasta/fastq/fastq.gz file).
  type: boolean
  inputBinding:
    prefix: -in2
- id: inp
  doc: interleaved paired read filenames (comma separated fasta/fastq/fastq.gz files).
  type: boolean
  inputBinding:
    prefix: -inP
- id: d
  doc: 'output directory path.(DEFAULT: current directory)'
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: 'output filename prefix.(DEFAULT: disco)'
  type: boolean
  inputBinding:
    prefix: -o
- id: m
  doc: 'maximum memory to be used (DEFAULT: 15 GB).'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: 'number of threads (DEFAULT: 8).'
  type: boolean
  inputBinding:
    prefix: -n
- id: obg
  doc: 'only build overlap graph (DEFAULT: False).'
  type: boolean
  inputBinding:
    prefix: -obg
- id: osg
  doc: 'only simplify existing overlap graph (DEFAULT: False).'
  type: boolean
  inputBinding:
    prefix: -osg
- id: p
  doc: assembly parameter file for 1st assembly iteration.
  type: boolean
  inputBinding:
    prefix: -p
- id: p2
  doc: assembly parameter file for 2nd assembly iteration.
  type: boolean
  inputBinding:
    prefix: -p2
- id: p3
  doc: assembly parameter file for 3rd assembly iteration.
  type: boolean
  inputBinding:
    prefix: -p3
outputs: []
cwlVersion: v1.1
baseCommand:
- runAssembly.sh