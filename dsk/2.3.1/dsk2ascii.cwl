class: CommandLineTool
id: dsk2ascii.cwl
inputs:
- id: c
  doc: '(0 arg) :    output to stdout'
  type: boolean
  inputBinding:
    prefix: -c
- id: fast_a
  doc: '(0 arg) :    output in fasta format, one kmer per read'
  type: boolean
  inputBinding:
    prefix: -fasta
- id: fast_q
  doc: '(0 arg) :    output in fastq format, one kmer per read'
  type: boolean
  inputBinding:
    prefix: -fastq
- id: file
  doc: '(1 arg) :    file generated by dsk'
  type: boolean
  inputBinding:
    prefix: -file
- id: out
  doc: '(1 arg) :    output file'
  type: boolean
  inputBinding:
    prefix: -out
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: version
  doc: '(0 arg) :    version'
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- dsk2ascii