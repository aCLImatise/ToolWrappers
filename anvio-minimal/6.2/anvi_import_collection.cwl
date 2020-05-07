class: CommandLineTool
id: anvi_import_collection.cwl
inputs:
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: pan_or_profile_db
  doc: Anvi'o pan or profile database (and even genes database in appropriate contexts).
  type: string
  inputBinding:
    prefix: --pan-or-profile-db
- id: collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: bins_info
  doc: Additional information for bins. The file must contain three TAB-delimited
    columns, where the first one must be a unique bin name, the second should be a
    'source', and the last one should be a 7 character HTML color code (i.e., '#424242').
    Source column must contain information about the origin of the bin. If these bins
    are automatically identified by a program like CONCOCT, this column could contain
    the program name and version. The source information will be associated with the
    bin in various interfaces so in a sense it is not *that* critical what it says
    there, but on the other hand it is, becuse we should also think about people who
    may end up having to work with what we put together later.
  type: string
  inputBinding:
    prefix: --bins-info
- id: contigs_mode
  doc: Use this flag if your binning was done on contigs instead of splits. Please
    refer to the documentation for help.
  type: boolean
  inputBinding:
    prefix: --contigs-mode
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-import-collection