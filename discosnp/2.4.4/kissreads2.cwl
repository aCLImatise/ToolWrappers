class: CommandLineTool
id: kissreads2.cwl
inputs:
- id: phasing
  doc: '(0 arg) :    [Experimental] Phase alleles mapped by the same (pair of) read(s)'
  type: boolean
  inputBinding:
    prefix: -phasing
- id: x
  doc: '(0 arg) :    radseq option, homogeneous read depth along the prediction '
  type: boolean
  inputBinding:
    prefix: -x
- id: predictions
  doc: '(1 arg) :    Input predictions'
  type: boolean
  inputBinding:
    prefix: -predictions
- id: reads
  doc: '(1 arg) :    Input reads'
  type: boolean
  inputBinding:
    prefix: -reads
- id: unco
  doc: "(1 arg) :    Output uncoherent file name  [default '/dev/null']"
  type: boolean
  inputBinding:
    prefix: -unco
- id: co
  doc: '(1 arg) :    Output coherent file name'
  type: boolean
  inputBinding:
    prefix: -co
- id: hamming
  doc: "(1 arg) :    Maximal hamming distance authorized while maping  [default '1']"
  type: boolean
  inputBinding:
    prefix: -hamming
- id: coverage_file
  doc: "(1 arg) :    File (.h5) generated by kissnp2, containing the coverage threshold\
    \ per read set  [default '_removemeplease']"
  type: boolean
  inputBinding:
    prefix: -coverage_file
- id: k
  doc: "(1 arg) :    Size of k, used as minial overlap and kmer spanning read coherence\
    \  [default '31']"
  type: boolean
  inputBinding:
    prefix: -k
- id: index_stride
  doc: "(1 arg) :    Index Stride  [default '2']"
  type: boolean
  inputBinding:
    prefix: -index_stride
- id: size_seeds
  doc: "(1 arg) :    Size of the used seeds (distinct from the size of k)  [default\
    \ '25']"
  type: boolean
  inputBinding:
    prefix: -size_seeds
- id: output_fast_a
  doc: '(0 arg) :    Output standart Fasta. By default the output is formatted especially
    for the discoSnp++ pipeline'
  type: boolean
  inputBinding:
    prefix: -output_fasta
- id: genotype
  doc: '(0 arg) :    Compute genotypes'
  type: boolean
  inputBinding:
    prefix: -genotype
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
- kissreads2