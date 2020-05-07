class: CommandLineTool
id: csvtk_sep.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: drop
  doc: drop extra data, exclusive with --merge
  type: boolean
  inputBinding:
    prefix: --drop
- id: fields
  doc: select only these fields. e.g -f 1,2 or -f columnA,columnB (default "1")
  type: string
  inputBinding:
    prefix: --fields
- id: ignore_case
  doc: ignore case
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: merge
  doc: only splits at most N times, exclusive with --drop
  type: boolean
  inputBinding:
    prefix: --merge
- id: na
  doc: content for filling NA data
  type: string
  inputBinding:
    prefix: --na
- id: names
  doc: new column names
  type: string
  inputBinding:
    prefix: --names
- id: num_cols
  doc: preset number of new created columns
  type: long
  inputBinding:
    prefix: --num-cols
- id: remove
  doc: remove input column
  type: boolean
  inputBinding:
    prefix: --remove
- id: sep
  doc: separator
  type: string
  inputBinding:
    prefix: --sep
- id: use_regexp
  doc: separator is a regular expression
  type: boolean
  inputBinding:
    prefix: --use-regexp
- id: chunk_size
  doc: chunk size of CSV reader (default 50)
  type: long
  inputBinding:
    prefix: --chunk-size
- id: comment_char
  doc: lines starting with commment-character will be ignored. if your header row
    starts with '#', please assign "-C" another rare symbol, e.g. '$' (default "#")
  type: string
  inputBinding:
    prefix: --comment-char
- id: delimiter
  doc: delimiting character of the input CSV file (default ",")
  type: string
  inputBinding:
    prefix: --delimiter
- id: ignore_empty_row
  doc: ignore empty rows
  type: boolean
  inputBinding:
    prefix: --ignore-empty-row
- id: ignore_illegal_row
  doc: ignore illegal rows
  type: boolean
  inputBinding:
    prefix: --ignore-illegal-row
- id: in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: string
  inputBinding:
    prefix: --infile-list
- id: lazy_quotes
  doc: if given, a quote may appear in an unquoted field and a non-doubled quote may
    appear in a quoted field
  type: boolean
  inputBinding:
    prefix: --lazy-quotes
- id: no_header_row
  doc: specifies that the input CSV file does not have header row
  type: boolean
  inputBinding:
    prefix: --no-header-row
- id: num_cpus
  doc: number of CPUs to use (default value depends on your computer) (default 8)
  type: long
  inputBinding:
    prefix: --num-cpus
- id: out_delimiter
  doc: delimiting character of the output CSV file, e.g., -D $'\t' for tab (default
    ",")
  type: string
  inputBinding:
    prefix: --out-delimiter
- id: out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: string
  inputBinding:
    prefix: --out-file
- id: out_tabs
  doc: specifies that the output is delimited with tabs. Overrides "-D"
  type: boolean
  inputBinding:
    prefix: --out-tabs
- id: tabs
  doc: specifies that the input CSV file is delimited with tabs. Overrides "-d" and
    "-D"
  type: boolean
  inputBinding:
    prefix: --tabs
outputs: []
cwlVersion: v1.1
baseCommand:
- csvtk
- sep