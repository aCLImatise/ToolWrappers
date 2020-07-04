class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/subread_buildindex.cwl
inputs:
- id: base_name_created
  doc: base name of the index to be created
  type: string
  inputBinding:
    prefix: -o
- id: build_full_index
  doc: build a full index for the reference genome. 16bp subreads will be extracted
    from every position of the reference genome. Size of the index is typically 3
    times the size of index built from using the default setting.
  type: boolean
  inputBinding:
    prefix: -F
- id: create_one_block
  doc: create one block of index. The built index will not be split into multiple
    pieces. This makes the largest amount of memory be requested when running alignments,
    but it enables the maximum mapping speed to be achieved. This option overrides
    -M when it is provided as well.
  type: boolean
  inputBinding:
    prefix: -B
- id: size_requested_memoryram
  doc: size of requested memory(RAM) in megabytes, 8000 by default.
  type: long
  inputBinding:
    prefix: -M
- id: specify_threshold_removing
  doc: specify the threshold for removing uninformative subreads (highly repetitive
    16mers in the reference). 100 by default.
  type: long
  inputBinding:
    prefix: -f
- id: build_colorspace_index
  doc: build a color-space index.
  type: boolean
  inputBinding:
    prefix: -c
- id: output_version_program
  doc: output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- subread-buildindex