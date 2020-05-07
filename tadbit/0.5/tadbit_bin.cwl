class: CommandLineTool
id: tadbit_bin.cwl
inputs:
- id: workdir
  doc: path to working directory (generated with the tool tadbit mapper)
  type: File
  inputBinding:
    prefix: --workdir
- id: resolution
  doc: resolution at which to output matrices
  type: long
  inputBinding:
    prefix: --resolution
- id: nox
  doc: no display server (X screen)
  type: boolean
  inputBinding:
    prefix: --noX
- id: bam
  doc: path to a TADbit-generated BAM file with all reads (other wise the tool will
    guess from the working directory database)
  type: File
  inputBinding:
    prefix: --bam
- id: jobid
  doc: Use as input data generated by a job with a given jobid. Use tadbit describe
    to find out which.
  type: long
  inputBinding:
    prefix: --jobid
- id: force
  doc: overwrite previously run job
  type: boolean
  inputBinding:
    prefix: --force
- id: quiet
  doc: remove all messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: tmp_db
  doc: if provided uses this directory to manipulate the database
  type: File
  inputBinding:
    prefix: --tmpdb
- id: n_chunks
  doc: maximum number of chunks into which to cut the BAM
  type: string
  inputBinding:
    prefix: --nchunks
- id: cpus
  doc: '[8] Maximum number of CPU cores available in the execution host. If higher
    than 1, tasks with multi-threading capabilities will enabled (if 0 all available)
    cores will be used'
  type: string
  inputBinding:
    prefix: --cpus
- id: filter
  doc: "[[1, 2, 3, 4, 6, 7, 9, 10]] Use filters to define a set os valid pair of reads\
    \ e.g.: '--apply 1 2 3 4 8 9 10'. Where these numberscorrespond to: 0: nothing,\
    \ 1: self-circle, 2: dangling-end, 3: error, 4: extra dangling-end, 5: too close\
    \ from RES, 6: too short, 7: too large, 8: over-represented, 9: duplicated, 10:\
    \ random breaks, 11: trans-chromosomic"
  type: long[]
  inputBinding:
    prefix: --filter
- id: biases
  doc: path to file with pre-calculated biases by columns
  type: File
  inputBinding:
    prefix: --biases
- id: norm
  doc: "[['raw']] normalization(s) to apply. Choices are: [norm, decay, raw, raw&decay]"
  type: string[]
  inputBinding:
    prefix: --norm
- id: matrix
  doc: Write text matrix in multiple columns (square). By defaults matrices are written
    in BED-like format (also only way to get a raw matrix with all values including
    the ones in masked columns).
  type: boolean
  inputBinding:
    prefix: --matrix
- id: cooler
  doc: Write i,j,v matrix in cooler format instead of text.
  type: boolean
  inputBinding:
    prefix: --cooler
- id: row_names
  doc: 'To store row names in the output text matrix. WARNING: when non- matrix, results
    in two extra columns'
  type: boolean
  inputBinding:
    prefix: --rownames
- id: only_plot
  doc: '[False] Skip writing matrix in text format.'
  type: boolean
  inputBinding:
    prefix: --only_plot
- id: interactive
  doc: '[False] Open matplotlib interactive plot (nothing will be saved).'
  type: boolean
  inputBinding:
    prefix: --interactive
- id: c
  doc: ', --coord             Coordinate of the region to retrieve. By default all
    genome, arguments can be either one chromosome name, or the coordinate in the
    form: "-c chr3:110000000-120000000"'
  type: boolean
  inputBinding:
    prefix: -c
- id: c2
  doc: ', --coord2           Coordinate of a second region to retrieve the matrix
    in the intersection with the first region.'
  type: boolean
  inputBinding:
    prefix: -c2
- id: only_txt
  doc: Save only text file for matrices, not images
  type: boolean
  inputBinding:
    prefix: --only_txt
- id: plot
  doc: Plot matrix in desired format.
  type: boolean
  inputBinding:
    prefix: --plot
- id: force_plot
  doc: Force plotting even with demoniacally big matrices (more than 5000x5000, or
    1500x1500with interactive option).
  type: boolean
  inputBinding:
    prefix: --force_plot
- id: triangular
  doc: '[False] represents only half matrix. Note that this also results in truly
    vectorial images of matrix.'
  type: boolean
  inputBinding:
    prefix: --triangular
- id: x_tick_rotation
  doc: '[-25] x-tick rotation'
  type: string
  inputBinding:
    prefix: --xtick_rotation
- id: cmap
  doc: '[viridis] Matplotlib color map to use.'
  type: string
  inputBinding:
    prefix: --cmap
- id: bad_color
  doc: '[white] Matplotlib color to use on bins filtered out (only used with normalized
    matrices, not raw).'
  type: string
  inputBinding:
    prefix: --bad_color
- id: format
  doc: '[png] plot file format.'
  type: string
  inputBinding:
    prefix: --format
- id: z_range
  doc: 'Range, in log2 scale of the color scale. i.e.: --zrange=-2,2'
  type: string
  inputBinding:
    prefix: --zrange
- id: transform
  doc: '[log2] can be any of [log2, log, none]'
  type: string
  inputBinding:
    prefix: --transform
- id: fig_size
  doc: 'Range, in log2 scale of the color scale. default for triangular matrices:
    --figsize=16,10 and for square matrices: --figsize=16,14'
  type: string
  inputBinding:
    prefix: --figsize
outputs: []
cwlVersion: v1.1
baseCommand:
- tadbit
- bin