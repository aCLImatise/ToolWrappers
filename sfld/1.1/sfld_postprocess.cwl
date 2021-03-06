class: CommandLineTool
id: ../../../sfld_postprocess.cwl
inputs:
- id: in_no_search
  doc: "| -S         don't run search if output files exist"
  type: boolean
  inputBinding:
    prefix: --nosearch
- id: in_hmmer_path
  doc: '| -p PATH    path to hmm* binaries (overrides $HMMER_PATH)'
  type: boolean
  inputBinding:
    prefix: --hmmerpath
- id: in_alignments
  doc: '| -a         HMMER alignment file'
  type: boolean
  inputBinding:
    prefix: --alignments
- id: in_dom
  doc: '| -d         HMMER domtblout file'
  type: boolean
  inputBinding:
    prefix: --dom
- id: in_hmmer_out
  doc: '| -O         HMMER output file'
  type: File
  inputBinding:
    prefix: --hmmer-out
- id: in_site_info
  doc: '| -s         SFLD reside annotation file'
  type: boolean
  inputBinding:
    prefix: --site-info
- id: in_format
  doc: '| -f FORMAT  output text format [not implemented]'
  type: boolean
  inputBinding:
    prefix: --format
- id: in_output
  doc: '| -o FILE    output file (otherwise STDOUT)'
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_hmmer_out
  doc: '| -O         HMMER output file'
  type: File
  outputBinding:
    glob: $(inputs.in_hmmer_out)
- id: out_output
  doc: '| -o FILE    output file (otherwise STDOUT)'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- sfld_postprocess
