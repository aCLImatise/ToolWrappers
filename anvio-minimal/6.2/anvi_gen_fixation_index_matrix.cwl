class: CommandLineTool
id: anvi_gen_fixation_index_matrix.cwl
inputs:
- id: profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: structure_db
  doc: Anvi'o structure database.
  type: string
  inputBinding:
    prefix: --structure-db
- id: variability_profile
  doc: The output of anvi-gen-variability-profile, or a different variant-calling
    output that has been converted to the anvi'o format.
  type: string
  inputBinding:
    prefix: --variability-profile
- id: collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: bin_id
  doc: Bin name you are interested in.
  type: string
  inputBinding:
    prefix: --bin-id
- id: splits_of_interest
  doc: A file with split names. There should be only one column in the file, and each
    line should correspond to a unique split name.
  type: File
  inputBinding:
    prefix: --splits-of-interest
- id: genes_of_interest
  doc: A file with anvi'o gene caller IDs. There should be only one column in the
    file, and each line should correspond to a unique gene caller id (without a column
    header).
  type: File
  inputBinding:
    prefix: --genes-of-interest
- id: gene_caller_ids
  doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: only_if_structure
  doc: If provided, your genes of interest will be further subset to only include
    genes with structures in your structure database, and therefore must be supplied
    in conjunction with a structure database, i.e. `-s <your_structure_database>`.
    If you did not specify genes of interest, ALL genes will be subset to those that
    have structures.
  type: boolean
  inputBinding:
    prefix: --only-if-structure
- id: samples_of_interest
  doc: A file with samples names. There should be only one column in the file, and
    each line should correspond to a unique sample name (without a column header).
  type: File
  inputBinding:
    prefix: --samples-of-interest
- id: engine
  doc: Variability engine. The default is 'NT'.
  type: string
  inputBinding:
    prefix: --engine
- id: min_occurrence
  doc: Minimum number of samples a nucleotide position should be reported as variable.
    Default is 1. If you set it to 2, for instance, each eligible variable position
    will be expected to appear in at least two samples, which will reduce the impact
    of stochastic, or unintelligible variable positions.
  type: string
  inputBinding:
    prefix: --min-occurrence
- id: min_coverage_in_each_sample
  doc: Minimum coverage of a given variable nucleotide position in all samples. If
    a nucleotide position is covered less than this value even in one sample, it will
    be removed from the analysis. Default is 0.
  type: long
  inputBinding:
    prefix: --min-coverage-in-each-sample
- id: output_file
  doc: File path to store results.
  type: string
  inputBinding:
    prefix: --output-file
- id: keep_negatives
  doc: Negative numbers are theoretically possible, and are sometimes interpreted
    as out-breeding. By default, we set negative numbers to 0 so the results are reflective
    of a standard distance metric. Provide this flag if you would prefer otherwise.
  type: boolean
  inputBinding:
    prefix: --keep-negatives
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-fixation-index-matrix