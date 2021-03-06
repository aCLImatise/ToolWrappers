class: CommandLineTool
id: ../../../readucks.cwl
inputs:
- id: in_input
  doc: "FASTQ of input reads or a directory which will be\nrecursively searched for\
    \ FASTQ files (required)."
  type: File
  inputBinding:
    prefix: --input
- id: in_output_dir
  doc: 'Output directory (default: working directory)'
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_bin_barcodes
  doc: "Reads will be binned based on their barcode and\nsaved to separate files.\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --bin_barcodes
- id: in_annotate_files
  doc: "Writes a CSV file for each input file containing\nbarcode calls for each read.\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --annotate_files
- id: in_extended_info
  doc: "Writes extended information about barcode calls.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --extended_info
- id: in_summary_info
  doc: "Writes another file with information about barcode\ncalls. (default: False)"
  type: boolean
  inputBinding:
    prefix: --summary_info
- id: in_mode
  doc: "Demuxing mode, one of [\"stringent\",\"lenient\",\n\"porechop\"]. (default:\
    \ porechop)"
  type: string
  inputBinding:
    prefix: --mode
- id: in_prefix
  doc: Optional prefix to file names
  type: File
  inputBinding:
    prefix: --prefix
- id: in_threads
  doc: "The number of threads to use (1 to turn off\nmultithreading) (default: 2)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_num_reads_in_batch
  doc: "The number of reads to process (and hold in memory)\nat a time (default: 200)"
  type: long
  inputBinding:
    prefix: --num_reads_in_batch
- id: in_check_reads
  doc: "Number of barcodes to classify before filtering\nbarcode set (default: 1000)"
  type: long
  inputBinding:
    prefix: --check_reads
- id: in_adapter_threshold
  doc: "Identity required for a barcode to be included after\nfiltering (default:\
    \ 90)"
  type: long
  inputBinding:
    prefix: --adapter_threshold
- id: in_verbosity
  doc: "Level of output information: 0 = none, 1 = some, 2 =\nlots (default: 1)"
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_require_two_barcodes
  doc: Match barcodes at both ends of read (default single)
  type: boolean
  inputBinding:
    prefix: --require_two_barcodes
- id: in_native_barcodes
  doc: "Only attempts to match the 24 native barcodes\n(default)"
  type: boolean
  inputBinding:
    prefix: --native_barcodes
- id: in_pcr_barcodes
  doc: "Only attempts to match the 96 PCR barcodes (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --pcr_barcodes
- id: in_rapid_barcodes
  doc: "Only attempts to match the 12 rapid barcodes\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --rapid_barcodes
- id: in_limit_barcodes_to
  doc: "Specify a list of barcodes to look for (numbers\nrefer to native, PCR or rapid)"
  type: string[]
  inputBinding:
    prefix: --limit_barcodes_to
- id: in_threshold
  doc: "A read must have at least this percent identity to a\nbarcode (default: 75)"
  type: long
  inputBinding:
    prefix: --threshold
- id: in_secondary_threshold
  doc: "The second barcode must have at least this percent\nidentity (and match the\
    \ first one) (default: 65)"
  type: long
  inputBinding:
    prefix: --secondary_threshold
- id: in_score_diff
  doc: "The second barcode must have at least this percent\nidentity (and match the\
    \ first one) (default: 5)"
  type: long
  inputBinding:
    prefix: --score_diff
- id: in_scoring_scheme
  doc: "Comma-delimited string of alignment scores: match,\nmismatch, gap open, gap\
    \ extend (default: 3,-6,-5,-2)"
  type: string
  inputBinding:
    prefix: --scoring_scheme
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Output directory (default: working directory)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- readucks
