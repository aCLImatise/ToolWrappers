class: CommandLineTool
id: coverageBed.cwl
inputs:
- id: hist
  doc: 'Report a histogram of coverage for each feature in A as well as a summary
    histogram for _all_ features in A. Output (tab delimited) after each feature in
    A: 1) depth 2) # bases at depth 3) size of A 4) % of A at depth'
  type: boolean
  inputBinding:
    prefix: -hist
- id: d
  doc: Report the depth at each position in each A feature. Positions reported are
    one based.  Each position and depth follow the complete A feature.
  type: boolean
  inputBinding:
    prefix: -d
- id: counts
  doc: report the count of overlaps, don't compute fraction, etc.
  type: string
  inputBinding:
    prefix: -counts
- id: mean
  doc: Report the mean depth of all positions in each A feature.
  type: boolean
  inputBinding:
    prefix: -mean
- id: s
  doc: Require same strandedness.  That is, only report hits in B that overlap A on
    the _same_ strand. - By default, overlaps are reported without respect to strand.
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: Require different strandedness.  That is, only report hits in B that overlap
    A on the _opposite_ strand. - By default, overlaps are reported without respect
    to strand.
  type: boolean
  inputBinding:
    prefix: -S
- id: f
  doc: Minimum overlap required as a fraction of A. - Default is 1E-9 (i.e., 1bp).
    - FLOAT (e.g. 0.50)
  type: boolean
  inputBinding:
    prefix: -f
- id: f
  doc: Minimum overlap required as a fraction of B. - Default is 1E-9 (i.e., 1bp).
    - FLOAT (e.g. 0.50)
  type: boolean
  inputBinding:
    prefix: -F
- id: r
  doc: Require that the fraction overlap be reciprocal for A AND B. - In other words,
    if -f is 0.90 and -r is used, this requires that B overlap 90% of A and A _also_
    overlaps 90% of B.
  type: boolean
  inputBinding:
    prefix: -r
- id: e
  doc: Require that the minimum fraction be satisfied for A OR B. - In other words,
    if -e is used with -f 0.90 and -F 0.10 this requires that either 90% of A is covered
    OR 10% of  B is covered. Without -e, both fractions would have to be satisfied.
  type: boolean
  inputBinding:
    prefix: -e
- id: split
  doc: Treat "split" BAM or BED12 entries as distinct BED intervals.
  type: boolean
  inputBinding:
    prefix: -split
- id: g
  doc: Provide a genome file to enforce consistent chromosome sort order across input
    files. Only applies when used with -sorted option.
  type: boolean
  inputBinding:
    prefix: -g
- id: no_name_check
  doc: For sorted data, don't throw an error if the file has different naming conventions
    for the same chromosome. ex. "chr1" vs "chr01".
  type: boolean
  inputBinding:
    prefix: -nonamecheck
- id: sorted
  doc: the "chromsweep" algorithm for sorted (-k1,1 -k2,2n) input.
  type: string
  inputBinding:
    prefix: -sorted
- id: bed
  doc: If using BAM input, write output as BED.
  type: boolean
  inputBinding:
    prefix: -bed
- id: header
  doc: the header from the A file prior to results.
  type: string
  inputBinding:
    prefix: -header
- id: no_buf
  doc: Disable buffered output. Using this option will cause each line of output to
    be printed as it is generated, rather than saved in a buffer. This will make printing
    large output files  noticeably slower, but can be useful in conjunction with other
    software tools and scripts that need to process one line of bedtools output at
    a time.
  type: boolean
  inputBinding:
    prefix: -nobuf
- id: i_obuf
  doc: 'Specify amount of memory to use for input buffer. Takes an integer argument.
    Optional suffixes K/M/G supported. Note: currently has no effect with compressed
    files.'
  type: boolean
  inputBinding:
    prefix: -iobuf
outputs: []
cwlVersion: v1.1
baseCommand:
- coverageBed