class: CommandLineTool
id: anvi_gen_variability_matrix.cwl
inputs:
- id: summary_dict
  doc: Summary file
  type: string
  inputBinding:
    position: 0
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: splits_of_interest
  doc: A file with split names. There should be only one column in the file, and each
    line should correspond to a unique split name.
  type: File
  inputBinding:
    prefix: --splits-of-interest
- id: samples_of_interest
  doc: A file with samples names. There should be only one column in the file, and
    each line should correspond to a unique sample name (without a column header).
  type: File
  inputBinding:
    prefix: --samples-of-interest
- id: num_positions_from_each_split
  doc: Each split may have one or more variable positions. By default, anvi'o will
    report every SNV position found in a given split. This parameter will help you
    to define a cutoff for the maximum number of SNVs to be reported from a split
    (if the number of SNVs is more than the number you declare using this parameter,
    the positions will be randomly subsampled).
  type: long
  inputBinding:
    prefix: --num-positions-from-each-split
- id: min_scatter
  doc: "This one is tricky. If you have N samples in your dataset, a given variable\
    \ position x in one of your splits can split your N samples into `t` groups based\
    \ on the identity of the variation they harbor at position x. For instance, `t`\
    \ would have been 1, if all samples had the same type of variation at position\
    \ x (which would not be very interesting, because in this case position x would\
    \ have zero contribution to a deeper understanding of how these samples differ\
    \ based on variability. When `t` > 1, it would mean that identities at position\
    \ x across samples do differ. But how much scattering occurs based on position\
    \ x when t > 1? If t=2, how many samples ended in each group? Obviously, even\
    \ distribution of samples across groups may tell us something different than uneven\
    \ distribution of samples across groups. So, this parameter filters out any x\
    \ if 'the number of samples in the second largest group' (=scatter) is less than\
    \ -m. Here is an example: let's assume you have 7 samples. While 5 of those have\
    \ AG, 2 of them have TC at position x. This would mean scatter of x is 2. If you\
    \ set -m to 2, this position would not be reported in your output matrix. The\
    \ default value for -m is 0, which means every `x` found in the database and survived\
    \ previous filtering criteria will be reported. Naturally, -m cannot be more than\
    \ half of the number of samples. Please refer to the user documentation if this\
    \ is confusing."
  type: long
  inputBinding:
    prefix: --min-scatter
- id: min_ratio_of_competing_s_nts
  doc: Minimum ratio of the competing nucleotides at a given position. Default is
    0.
  type: string
  inputBinding:
    prefix: --min-ratio-of-competings-nts
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-variability-matrix