class: CommandLineTool
id: ../../../guidescan_cutting_specificity_processer.cwl
inputs:
- id: in_database_directory
  doc: "absolute filepath to directory hosting sgRNA database\nwith no cutting specificity\
    \ scores"
  type: Directory
  inputBinding:
    prefix: --database_directory
- id: in_database_name
  doc: "filename of sgRNA database with no cutting specificity\nscores"
  type: File
  inputBinding:
    prefix: --database_name
- id: in_km_ers_file
  doc: "absolute filepath to directory hosting either\nX_all_kmers.txt.gz or X_all_kmers_counted.txt"
  type: File
  inputBinding:
    prefix: --kmers_file
- id: in_fast_a_file_path
  doc: "absolute filepath to organism FASTA file. Index for\nFASTA should also be\
    \ present in same directory (.fai).\nMust be single aggregate FASTA file for organism"
  type: File
  inputBinding:
    prefix: --fasta_filepath
- id: in_database_directory_two
  doc: "absolute filepath to directory hosting sgRNA database\nwith cutting specificity\
    \ scores already included and\ngenerated with all the same run parameters as another\n\
    database except for -d. This parameter, coupled with\n-n2, allows for the transfer\
    \ of cutting efficiency\nscores between two sgRNA databases that differ only in\n\
    how many mismatches off-targets are enumerated to"
  type: Directory
  inputBinding:
    prefix: --database_directory2
- id: in_database_name_two
  doc: "filename of sgRNA database with cutting specificity\nscores already included\
    \ and generated with all the\nsame run parameters as another database except for\
    \ -d.\nThis parameter, coupled with -d2, allows for the\ntransfer of cutting efficiency\
    \ scores between two\nsgRNA databases that differ only in how many\nmismatches\
    \ off-targets are enumerated to\n"
  type: long
  inputBinding:
    prefix: --database_name2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- guidescan_cutting_specificity_processer
