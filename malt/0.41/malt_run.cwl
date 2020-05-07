class: CommandLineTool
id: malt_run.cwl
inputs:
- id: mode
  doc: '[string]                  Program mode. Mandatory option. Legal values: Unknown,
    BlastN, BlastP, BlastX, Classifier'
  type: boolean
  inputBinding:
    prefix: --mode
- id: alignment_type
  doc: '[string]        Type of alignment to be performed. Default value: Local. Legal
    values: Local, SemiGlobal'
  type: boolean
  inputBinding:
    prefix: --alignmentType
- id: in_file
  doc: '[string(s)]             Input file(s) containing queries in FastA or FastQ
    format (gzip or zip ok). Mandatory option.'
  type: boolean
  inputBinding:
    prefix: --inFile
- id: index
  doc: '[string]                 Index directory as generated by MaltBuild. Mandatory
    option.'
  type: boolean
  inputBinding:
    prefix: --index
- id: output
  doc: '[string(s)]             Output RMA file(s) or directory. '
  type: boolean
  inputBinding:
    prefix: --output
- id: include_unaligned
  doc: 'Include unaligned queries in RMA output file. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --includeUnaligned
- id: alignments
  doc: '[string(s)]         Output alignment file(s) or directory or STDOUT. '
  type: boolean
  inputBinding:
    prefix: --alignments
- id: format
  doc: '[string]                Alignment output format. Default value: SAM. Legal
    values: SAM, Tab, Text'
  type: boolean
  inputBinding:
    prefix: --format
- id: gzip_alignments
  doc: 'Compress alignments using gzip. Default value: true.'
  type: boolean
  inputBinding:
    prefix: --gzipAlignments
- id: sam_soft_clip
  doc: 'Use soft clipping in SAM files (BlastN mode only). Default value: false.'
  type: boolean
  inputBinding:
    prefix: --samSoftClip
- id: sparse_sam
  doc: 'Produce sparse SAM format (smaller, faster, but only suitable for MEGAN).
    Default value: false.'
  type: boolean
  inputBinding:
    prefix: --sparseSAM
- id: out_aligned
  doc: '[string(s)]        Aligned reads output file(s) or directory or STDOUT. '
  type: boolean
  inputBinding:
    prefix: --outAligned
- id: gzip_aligned
  doc: 'Compress aligned reads output using gzip. Default value: true.'
  type: boolean
  inputBinding:
    prefix: --gzipAligned
- id: out_unaligned
  doc: '[string(s)]      Unaligned reads output file(s) or directory or STDOUT. '
  type: boolean
  inputBinding:
    prefix: --outUnaligned
- id: gzip_unaligned
  doc: 'Compress unaligned reads output using gzip. Default value: true.'
  type: boolean
  inputBinding:
    prefix: --gzipUnaligned
- id: num_threads
  doc: '[number]            Number of worker threads. Default value: 8.'
  type: boolean
  inputBinding:
    prefix: --numThreads
- id: memory_mode
  doc: '[string]          Memory mode. Default value: load. Legal values: load, page,
    map'
  type: boolean
  inputBinding:
    prefix: --memoryMode
- id: max_tables
  doc: '[number]            Set the maximum number of seed tables to use (0=all).
    Default value: 0.'
  type: boolean
  inputBinding:
    prefix: --maxTables
- id: replicate_query_cache
  doc: 'Cache results for replicated queries. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --replicateQueryCache
- id: min_bit_score
  doc: '[number]           Minimum bit score. Default value: 50.0.'
  type: boolean
  inputBinding:
    prefix: --minBitScore
- id: max_expected
  doc: '[number]           Maximum expected score. Default value: 1.0.'
  type: boolean
  inputBinding:
    prefix: --maxExpected
- id: min_percent_identity
  doc: '[number]   Minimum percent identity. Default value: 0.0.'
  type: boolean
  inputBinding:
    prefix: --minPercentIdentity
- id: max_alignments_per_query
  doc: '[number]   Maximum number of alignments per query. Default value: 25.'
  type: boolean
  inputBinding:
    prefix: --maxAlignmentsPerQuery
- id: max_alignments_per_ref
  doc: '[number]   Maximum number of (non-overlapping) alignments per reference. Default
    value: 1.'
  type: boolean
  inputBinding:
    prefix: --maxAlignmentsPerRef
- id: match_score
  doc: '[number]           Match score. Default value: 2.'
  type: boolean
  inputBinding:
    prefix: --matchScore
- id: mismatch_score
  doc: '[number]        Mismatch score. Default value: -3.'
  type: boolean
  inputBinding:
    prefix: --mismatchScore
- id: set_lambda
  doc: '[number]            Parameter Lambda for BLASTN statistics. Default value:
    0.625.'
  type: boolean
  inputBinding:
    prefix: --setLambda
- id: set_k
  doc: '[number]                  Parameter K for BLASTN statistics. Default value:
    0.41.'
  type: boolean
  inputBinding:
    prefix: --setK
- id: submatrix
  doc: '[string]           Protein substitution matrix to use. Default value: BLOSUM62.
    Legal values: BLOSUM45, BLOSUM50, BLOSUM62, BLOSUM80, BLOSUM90'
  type: boolean
  inputBinding:
    prefix: --subMatrix
- id: forward_only
  doc: 'Align query forward strand only. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --forwardOnly
- id: reverse_only
  doc: 'Align query reverse strand only. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --reverseOnly
- id: top_percent
  doc: '[number]          Top percent value for LCA algorithm. Default value: 10.0.'
  type: boolean
  inputBinding:
    prefix: --topPercent
- id: min_support_percent
  doc: '[number]   Min support value for LCA algorithm as a percent of assigned reads
    (0==off). Default value: 0.001.'
  type: boolean
  inputBinding:
    prefix: --minSupportPercent
- id: min_support
  doc: '[number]          Min support value for LCA algorithm (overrides --minSupportPercent).
    Default value: 0.'
  type: boolean
  inputBinding:
    prefix: --minSupport
- id: min_percent_identity_lca
  doc: '[number]   Min percent identity used by LCA algorithm. Default value: 0.0.'
  type: boolean
  inputBinding:
    prefix: --minPercentIdentityLCA
- id: use_min_percent_identity_filter_lca
  doc: 'Use percent identity assignment filter. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --useMinPercentIdentityFilterLCA
- id: weighted_lca
  doc: 'Use the weighted LCA for taxonomic assignment. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --weightedLCA
- id: lca_coverage_percent
  doc: '[number]   Set the percent for the LCA to cover. Default value: 100.0.'
  type: boolean
  inputBinding:
    prefix: --lcaCoveragePercent
- id: magnitudes
  doc: 'Reads have magnitudes (to be used in taxonomic or functional analysis). Default
    value: false.'
  type: boolean
  inputBinding:
    prefix: --magnitudes
- id: con_file
  doc: '[string]              File of contaminant taxa (one Id or name per line). '
  type: boolean
  inputBinding:
    prefix: --conFile
- id: max_seeds_per_frame
  doc: '[number]    Maximum number of seed matches per offset per read frame. Default
    value: 100.'
  type: boolean
  inputBinding:
    prefix: --maxSeedsPerFrame
- id: max_seeds_per_ref
  doc: '[number]      Maximum number of seed matches per read and reference. Default
    value: 20.'
  type: boolean
  inputBinding:
    prefix: --maxSeedsPerRef
- id: seed_shift
  doc: '[number]            Seed shift. Default value: 1.'
  type: boolean
  inputBinding:
    prefix: --seedShift
- id: gap_open
  doc: '[number]              Gap open penalty. Default value: 11.'
  type: boolean
  inputBinding:
    prefix: --gapOpen
- id: gap_extend
  doc: '[number]            Gap extension penalty. Default value: 1.'
  type: boolean
  inputBinding:
    prefix: --gapExtend
- id: band
  doc: '[number]                 Band width/2 for banded alignment. Default value:
    4.'
  type: boolean
  inputBinding:
    prefix: --band
- id: replicate_query_cache_bits
  doc: '[number]   Bits used for caching replicate queries (size is then 2^bits).
    Default value: 20.'
  type: boolean
  inputBinding:
    prefix: --replicateQueryCacheBits
- id: x_part
  doc: 'Show part of the table in human readable form for debugging. Default value:
    false.'
  type: boolean
  inputBinding:
    prefix: --xPart
- id: verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- malt-run