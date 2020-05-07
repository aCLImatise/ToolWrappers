class: CommandLineTool
id: run_abundance.py.cwl
inputs:
- id: alignment_size
  doc: 'max alignment subset size of N [default: 10% of the total number of taxa or
    the placement subset size if given]'
  type: string
  inputBinding:
    prefix: --alignmentSize
- id: placement_size
  doc: 'max placement subset size of N [default: 10% of the total number of taxa or
    the alignment length (whichever bigger)]'
  type: string
  inputBinding:
    prefix: --placementSize
- id: fragment_chunksize
  doc: 'maximum fragment chunk size of N. Helps controlling memory. [default: 20000]'
  type: string
  inputBinding:
    prefix: --fragmentChunkSize
- id: distance
  doc: 'minimum p-distance before stopping the decomposition[default: 1]'
  type: string
  inputBinding:
    prefix: --distance
- id: diameter
  doc: 'maximum tree diameter before stopping the decomposition[default: None]'
  type: string
  inputBinding:
    prefix: --diameter
- id: decomp_strategy
  doc: 'decomposition strategy [default: using tree branch length]'
  type: string
  inputBinding:
    prefix: --decomp_strategy
- id: tempdir
  doc: 'Tempfile files will be written to DIR. Full-path required. [default: /tmp/sepp]'
  type: string
  inputBinding:
    prefix: --tempdir
- id: output
  doc: 'output files with prefix OUTPUT. [default: output]'
  type: string
  inputBinding:
    prefix: --output
- id: outdir
  doc: 'output to OUTPUT_DIR directory. full-path required. [default: .]'
  type: string
  inputBinding:
    prefix: --outdir
- id: config
  doc: 'A config file, including options used to run SEPP. Options provided as command
    line arguments overwrite config file values for those options. [default: None]'
  type: string
  inputBinding:
    prefix: --config
- id: tree
  doc: 'Input tree file (newick format) [default: None]'
  type: string
  inputBinding:
    prefix: --tree
- id: ra_xml
  doc: 'RAxML_info file including model parameters, generated by RAxML.[default: None]'
  type: string
  inputBinding:
    prefix: --raxml
- id: alignment
  doc: 'Aligned fasta file [default: None]'
  type: string
  inputBinding:
    prefix: --alignment
- id: fragment
  doc: 'fragment file [default: None]'
  type: string
  inputBinding:
    prefix: --fragment
- id: molecule
  doc: 'Molecule type of sequences. Can be amino, dna, or rna [default: dna]'
  type: string
  inputBinding:
    prefix: --molecule
- id: cpu
  doc: 'Use N cpus [default: number of cpus available on the machine]'
  type: string
  inputBinding:
    prefix: --cpu
- id: checkpoint
  doc: 'checkpoint file [default: no checkpointing]'
  type: string
  inputBinding:
    prefix: --checkpoint
- id: interval
  doc: 'Interval (in seconds) between checkpoint writes. Has effect only with -cp
    provided. [default: 3600]'
  type: string
  inputBinding:
    prefix: --interval
- id: random_seed
  doc: 'random seed number. [default: 297834]'
  type: string
  inputBinding:
    prefix: --randomseed
- id: alignment_threshold
  doc: 'Enough alignment subsets are selected to reach a commulative probability of
    N. This should be a number between 0 and 1 [default: 0.95]'
  type: string
  inputBinding:
    prefix: --alignmentThreshold
- id: placement_threshold
  doc: 'Enough placements are selected to reach a commulative probability of N. This
    should be a number between 0 and 1 [default: 0.95]'
  type: string
  inputBinding:
    prefix: --placementThreshold
- id: gene
  doc: Classify on only the specified gene.
  type: string
  inputBinding:
    prefix: --gene
- id: blast_file
  doc: Blast file with fragments already binned.
  type: string
  inputBinding:
    prefix: --blast_file
- id: bin_using
  doc: Tool for binning
  type: string
  inputBinding:
    prefix: --bin_using
- id: dist
  doc: Treat fragments as distribution
  type: boolean
  inputBinding:
    prefix: --dist
- id: cut_off
  doc: 'Placement probability requirement to count toward the distribution. This should
    be a number between 0 and 1 [default: 0.0]'
  type: string
  inputBinding:
    prefix: --cutoff
- id: genes
  doc: 'Use markers or cogs genes [default: markers]'
  type: string
  inputBinding:
    prefix: --genes
outputs: []
cwlVersion: v1.1
baseCommand:
- run_abundance.py