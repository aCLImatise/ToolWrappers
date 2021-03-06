class: CommandLineTool
id: ../../../run_midas.py_genes.cwl
inputs:
- id: in_remove_temp
  doc: "Remove intermediate files generated by MIDAS (False).\nUseful to reduce disk\
    \ space of MIDAS output"
  type: boolean
  inputBinding:
    prefix: --remove_temp
- id: in_build_db
  doc: Build bowtie2 database of pangenomes
  type: boolean
  inputBinding:
    prefix: --build_db
- id: in_align
  doc: Align reads to pangenome database
  type: boolean
  inputBinding:
    prefix: --align
- id: in_call_genes
  doc: Compute coverage of genes in pangenome database
  type: boolean
  inputBinding:
    prefix: --call_genes
- id: in_path_reference_default
  doc: "Path to reference database\nBy default, the MIDAS_DB environmental variable\
    \ is used"
  type: File
  inputBinding:
    prefix: -d
- id: in_species_cov
  doc: Include species with >X coverage (3.0)
  type: double
  inputBinding:
    prefix: --species_cov
- id: in_species_top_n
  doc: Include top N most abundant species
  type: long
  inputBinding:
    prefix: --species_topn
- id: in_species_id
  doc: Include specified species. Separate ids with a comma
  type: string
  inputBinding:
    prefix: --species_id
- id: in_fastafastq_file_containing_st_mate
  doc: "FASTA/FASTQ file containing 1st mate if using paired-end reads.\nOtherwise\
    \ FASTA/FASTQ containing unpaired reads.\nCan be gzip'ed (extension: .gz) or bzip2'ed\
    \ (extension: .bz2)"
  type: long
  inputBinding:
    prefix: '-1'
- id: in_fastafastq_file_containing_nd_mate
  doc: "FASTA/FASTQ file containing 2nd mate if using paired-end reads.\nCan be gzip'ed\
    \ (extension: .gz) or bzip2'ed (extension: .bz2)"
  type: long
  inputBinding:
    prefix: '-2'
- id: in_interleaved
  doc: FASTA/FASTQ file in -1 are paired and contain forward AND reverse reads
  type: boolean
  inputBinding:
    prefix: --interleaved
- id: in_alignment_speedsensitivity_verysensitive
  doc: Alignment speed/sensitivity (very-sensitive)
  type: string
  inputBinding:
    prefix: -s
- id: in_globallocal_read_alignment
  doc: Global/local read alignment (local)
  type: string
  inputBinding:
    prefix: -m
- id: in_reads_use_use
  doc: '# reads to use from input file(s) (use all)'
  type: long
  inputBinding:
    prefix: -n
- id: in_number_threads_use
  doc: Number of threads to use (1)
  type: long
  inputBinding:
    prefix: -t
- id: in_read_q
  doc: Discard reads with mean quality < READQ (20)
  type: long
  inputBinding:
    prefix: --readq
- id: in_map_id
  doc: Discard reads with alignment identity < MAPID (94.0)
  type: double
  inputBinding:
    prefix: --mapid
- id: in_aln_cov
  doc: Discard reads with alignment coverage < ALN_COV (0.75)
  type: double
  inputBinding:
    prefix: --aln_cov
- id: in_trim
  doc: Trim N base-pairs from 3'/right end of read (0)
  type: long
  inputBinding:
    prefix: --trim
- id: in_outdir
  doc: "Path to directory to store results. \nDirectory name should correspond to\
    \ sample identifier"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_midas.py
- genes
