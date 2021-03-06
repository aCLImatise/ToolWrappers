class: CommandLineTool
id: ../../../mob_typer.cwl
inputs:
- id: in_in_file
  doc: Input assembly fasta file to process
  type: File
  inputBinding:
    prefix: --infile
- id: in_out_file
  doc: Output file to write results
  type: File
  inputBinding:
    prefix: --out_file
- id: in_analysis_dir
  doc: Analysis directory
  type: Directory
  inputBinding:
    prefix: --analysis_dir
- id: in_num_threads
  doc: Number of threads to be used
  type: long
  inputBinding:
    prefix: --num_threads
- id: in_sample_id
  doc: Sample Prefix for reports
  type: string
  inputBinding:
    prefix: --sample_id
- id: in_force
  doc: Overwrite existing directory
  type: boolean
  inputBinding:
    prefix: --force
- id: in_multi
  doc: Treat each sequence as an independant plasmid
  type: boolean
  inputBinding:
    prefix: --multi
- id: in_min_rep_evalue
  doc: Minimum evalue threshold for replicon blastn
  type: long
  inputBinding:
    prefix: --min_rep_evalue
- id: in_min_mob_evalue
  doc: Minimum evalue threshold for relaxase tblastn
  type: long
  inputBinding:
    prefix: --min_mob_evalue
- id: in_min_con_evalue
  doc: Minimum evalue threshold for contig blastn
  type: long
  inputBinding:
    prefix: --min_con_evalue
- id: in_min_length
  doc: Minimum length of contigs to classify
  type: long
  inputBinding:
    prefix: --min_length
- id: in_min_rep_ident
  doc: Minimum sequence identity for replicons
  type: long
  inputBinding:
    prefix: --min_rep_ident
- id: in_min_mob_ident
  doc: Minimum sequence identity for relaxases
  type: long
  inputBinding:
    prefix: --min_mob_ident
- id: in_min_con_ident
  doc: Minimum sequence identity for contigs
  type: long
  inputBinding:
    prefix: --min_con_ident
- id: in_min_rep_cov
  doc: "Minimum percentage coverage of replicon query by input\nassembly"
  type: long
  inputBinding:
    prefix: --min_rep_cov
- id: in_min_mob_cov
  doc: "Minimum percentage coverage of relaxase query by input\nassembly"
  type: long
  inputBinding:
    prefix: --min_mob_cov
- id: in_min_con_cov
  doc: "Minimum percentage coverage of assembly contig by the\nplasmid reference database\
    \ to be considered"
  type: long
  inputBinding:
    prefix: --min_con_cov
- id: in_min_overlap
  doc: Minimum overlap of fragments
  type: long
  inputBinding:
    prefix: --min_overlap
- id: in_keep_tmp
  doc: Do not delete temporary file directory
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: in_debug
  doc: Show debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_plasmid_mash_db
  doc: Companion Mash database of reference database
  type: string
  inputBinding:
    prefix: --plasmid_mash_db
- id: in_plasmid_meta
  doc: "MOB-cluster plasmid cluster formatted file matched to\nthe reference plasmid\
    \ db"
  type: File
  inputBinding:
    prefix: --plasmid_meta
- id: in_plasmid_db_type
  doc: Blast database type of reference database
  type: string
  inputBinding:
    prefix: --plasmid_db_type
- id: in_plasmid_replicons
  doc: Fasta of plasmid replicons
  type: string
  inputBinding:
    prefix: --plasmid_replicons
- id: in_repetitive_mask
  doc: Fasta of known repetitive elements
  type: string
  inputBinding:
    prefix: --repetitive_mask
- id: in_plasmid_mob
  doc: Fasta of plasmid relaxases
  type: string
  inputBinding:
    prefix: --plasmid_mob
- id: in_plasmid_mpf
  doc: Fasta of known plasmid mate-pair proteins
  type: string
  inputBinding:
    prefix: --plasmid_mpf
- id: in_plasmid_or_it
  doc: Fasta of known plasmid oriT dna sequences
  type: string
  inputBinding:
    prefix: --plasmid_orit
- id: in_database_directory
  doc: "Directory you want to use for your databases. If the\ndatabases are not already\
    \ downloaded, they will be\ndownloaded automatically. Defaults to\n/usr/local/lib/python3.8/site-\n\
    packages/mob_suite/databases"
  type: Directory
  inputBinding:
    prefix: --database_directory
- id: in_primary_cluster_dist
  doc: Mash distance for assigning primary cluster id 0 - 1
  type: long
  inputBinding:
    prefix: --primary_cluster_dist
- id: in_secondary_cluster_dist
  doc: Mash distance for assigning primary cluster id 0 - 1
  type: long
  inputBinding:
    prefix: --secondary_cluster_dist
- id: in_three_dot_zero_dot_zero
  doc: 'optional arguments:'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: Output file to write results
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- mob_typer
