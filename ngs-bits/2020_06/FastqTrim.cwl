class: CommandLineTool
id: ../../../FastqTrim.cwl
inputs:
- id: in_in
  doc: Input gzipped FASTQ file.
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output gzipped FASTQ file.
  type: File
  inputBinding:
    prefix: -out
- id: in_start
  doc: "Trim this number of bases from the start of the read.\nDefault value: '0'"
  type: long
  inputBinding:
    prefix: -start
- id: in_end
  doc: "Trim this number of bases from the end of the read.\nDefault value: '0'"
  type: long
  inputBinding:
    prefix: -end
- id: in_len
  doc: "Restrict read length to this value (after trimming from start/end).\nDefault\
    \ value: '0'"
  type: long
  inputBinding:
    prefix: -len
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output gzipped FASTQ file.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- FastqTrim
