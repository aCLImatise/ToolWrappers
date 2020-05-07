class: CommandLineTool
id: mageck_plot.cwl
inputs:
- id: count_table
  doc: Provide a tab-separated count table instead of sam files. Each line in the
    table should include sgRNA name (1st column), gene name (2nd column) and read
    counts in each sample.
  type: string
  inputBinding:
    prefix: --count-table
- id: gene_summary
  doc: The gene summary file generated by the test command.
  type: string
  inputBinding:
    prefix: --gene-summary
- id: genes
  doc: 'A list of genes to be plotted, separated by comma. Default: none.'
  type: string
  inputBinding:
    prefix: --genes
- id: samples
  doc: 'A list of samples to be plotted, separated by comma. Default: using all samples
    in the count table.'
  type: string
  inputBinding:
    prefix: --samples
- id: output_prefix
  doc: The prefix of the output file(s). Default sample1.
  type: string
  inputBinding:
    prefix: --output-prefix
- id: norm_method
  doc: Method for normalization, including "none" (no normalization), "median" (median
    normalization, default), "total" (normalization by total read counts), "control"
    (normalization by control sgRNAs specified by the --control-sgrna option).
  type: string
  inputBinding:
    prefix: --norm-method
- id: control_sg_rna
  doc: A list of control sgRNAs for normalization and for generating the null distribution
    of RRA.
  type: string
  inputBinding:
    prefix: --control-sgrna
- id: control_gene
  doc: A list of genes whose sgRNAs are used as control sgRNAs for normalization and
    for generating the null distribution of RRA.
  type: string
  inputBinding:
    prefix: --control-gene
- id: keep_tmp
  doc: Keep intermediate files.
  type: boolean
  inputBinding:
    prefix: --keep-tmp
outputs: []
cwlVersion: v1.1
baseCommand:
- mageck
- plot