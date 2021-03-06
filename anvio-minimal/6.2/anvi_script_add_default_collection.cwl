class: CommandLineTool
id: ../../../anvi_script_add_default_collection.cwl
inputs:
- id: in_pan_or_profile_db
  doc: "Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts)."
  type: string
  inputBinding:
    prefix: --pan-or-profile-db
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_bin_id
  doc: "Name for the new bin. If you don't provide any then it\nwill be named \"EVERYTHING\"\
    ."
  type: string
  inputBinding:
    prefix: --bin-id
- id: in_collection_name
  doc: "Name for the new collection. If you don't provide any\nthen it will be named\
    \ \"DEFAULT\".\n"
  type: string
  inputBinding:
    prefix: --collection-name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-script-add-default-collection
