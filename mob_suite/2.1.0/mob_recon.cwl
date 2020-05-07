class: CommandLineTool
id: mob_recon.cwl
inputs:
- id: outdir
  doc: Output Directory to put results
  type: string
  inputBinding:
    prefix: --outdir
- id: in_file
  doc: Input assembly fasta file to process
  type: string
  inputBinding:
    prefix: --infile
- id: num_threads
  doc: Number of threads to be used
  type: string
  inputBinding:
    prefix: --num_threads
- id: max_contig_size
  doc: Maximum size of a contig to be considered a plasmid
  type: long
  inputBinding:
    prefix: --max_contig_size
- id: max_plasmid_size
  doc: Maximum size of a reconstructed plasmid
  type: long
  inputBinding:
    prefix: --max_plasmid_size
- id: min_rep_evalue
  doc: Minimum evalue threshold for replicon blastn
  type: long
  inputBinding:
    prefix: --min_rep_evalue
- id: min_mob_evalue
  doc: Minimum evalue threshold for relaxase tblastn
  type: long
  inputBinding:
    prefix: --min_mob_evalue
- id: min_con_evalue
  doc: Minimum evalue threshold for contig blastn
  type: long
  inputBinding:
    prefix: --min_con_evalue
- id: min_rpp_evalue
  doc: Minimum evalue threshold for repetitve elements blastn
  type: long
  inputBinding:
    prefix: --min_rpp_evalue
- id: min_length
  doc: Minimum length of contigs to classify
  type: long
  inputBinding:
    prefix: --min_length
- id: min_rep_ident
  doc: Minimum sequence identity for replicons
  type: long
  inputBinding:
    prefix: --min_rep_ident
- id: min_mob_ident
  doc: Minimum sequence identity for relaxases
  type: long
  inputBinding:
    prefix: --min_mob_ident
- id: min_con_ident
  doc: Minimum sequence identity for contigs
  type: long
  inputBinding:
    prefix: --min_con_ident
- id: min_rpp_ident
  doc: Minimum sequence identity for repetitive elements
  type: long
  inputBinding:
    prefix: --min_rpp_ident
- id: min_rep_cov
  doc: Minimum percentage coverage of replicon query by input assembly
  type: long
  inputBinding:
    prefix: --min_rep_cov
- id: min_mob_cov
  doc: Minimum percentage coverage of relaxase query by input assembly
  type: long
  inputBinding:
    prefix: --min_mob_cov
- id: min_con_cov
  doc: Minimum percentage coverage of assembly contig by the plasmid reference database
    to be considered
  type: long
  inputBinding:
    prefix: --min_con_cov
- id: min_rpp_cov
  doc: Minimum percentage coverage of contigs by repetitive elements
  type: long
  inputBinding:
    prefix: --min_rpp_cov
- id: min_overlap
  doc: Minimum overlap of fragments
  type: long
  inputBinding:
    prefix: --min_overlap
- id: unicycle_r_contigs
  doc: Check for circularity flag generated by unicycler in fasta headers
  type: boolean
  inputBinding:
    prefix: --unicycler_contigs
- id: run_overhang
  doc: Detect circular contigs with assembly overhangs
  type: boolean
  inputBinding:
    prefix: --run_overhang
- id: keep_tmp
  doc: Do not delete temporary file directory
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: run_type_r
  doc: Automatically run Mob-typer on the identified plasmids
  type: boolean
  inputBinding:
    prefix: --run_typer
- id: debug
  doc: Show debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: plasmid_db
  doc: Reference Database of complete plasmids
  type: string
  inputBinding:
    prefix: --plasmid_db
- id: plasmid_mash_db
  doc: Companion Mash database of reference database
  type: string
  inputBinding:
    prefix: --plasmid_mash_db
- id: plasmid_db_type
  doc: Blast database type of reference database
  type: string
  inputBinding:
    prefix: --plasmid_db_type
- id: plasmid_replicons
  doc: Fasta of plasmid replicons
  type: string
  inputBinding:
    prefix: --plasmid_replicons
- id: repetitive_mask
  doc: Fasta of known repetitive elements
  type: string
  inputBinding:
    prefix: --repetitive_mask
- id: plasmid_mob
  doc: Fasta of plasmid relaxases
  type: string
  inputBinding:
    prefix: --plasmid_mob
- id: database_directory
  doc: Directory you want to use for your databases. If the databases are not already
    downloaded, they will be downloaded automatically. Defaults to /tmp/tmpcsr8zpp7/lib/python3.6/site-
    packages/mob_suite/databases
  type: string
  inputBinding:
    prefix: --database_directory
outputs: []
cwlVersion: v1.1
baseCommand:
- mob_recon