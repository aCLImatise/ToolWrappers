class: CommandLineTool
id: ../../../bwa_mem.pl.cwl
inputs:
- id: in_outdir
  doc: -o   Folder to output result to.
  type: Directory
  inputBinding:
    prefix: -outdir
- id: in_path_reference_file
  doc: -r   Path to reference genome file *.fa[.gz]
  type: boolean
  inputBinding:
    prefix: -reference
- id: in_sample_name_applied
  doc: -s   Sample name to be applied to output file.
  type: File
  inputBinding:
    prefix: -sample
- id: in_number_threads_use
  doc: -t   Number of threads to use. [1]
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_fragment
  doc: -f   Split input into fragements of X million repairs [10]
  type: boolean
  inputBinding:
    prefix: -fragment
- id: in_no_mark_dup
  doc: -n   Don't mark duplicates
  type: boolean
  inputBinding:
    prefix: -nomarkdup
- id: in_output_cram_see
  doc: -c   Output cram, see '-sc'
  type: boolean
  inputBinding:
    prefix: -cram
- id: in_sc_single_quoted
  doc: "-sc  Single quoted string of parameters to pass to Scramble when '-c' used\n\
    - '-I,-O' are used internally and should not be provided"
  type: boolean
  inputBinding:
    prefix: -scramble
- id: in_bwa
  doc: "-b     Single quoted string of additional parameters to pass to BWA\n- '-t,-p,-R'\
    \ are used internally and should not be provided"
  type: boolean
  inputBinding:
    prefix: -bwa
- id: in_map_threads
  doc: Number of cores applied to each parallel BWA job when '-t' exceeds this value
    and '-i' is not in use[6]
  type: boolean
  inputBinding:
    prefix: -map_threads
- id: in_process
  doc: "-p   Only process this step then exit, optionally set -index\nbwamem - only\
    \ applicable if input is bam\nmark - Run duplicate marking (-index N/A)\nstats\
    \ - Generates the *.bas file for the final BAM."
  type: boolean
  inputBinding:
    prefix: -process
- id: in_index
  doc: "-i   Optionally restrict '-p' to single job\nbwamem - 1..<lane_count>"
  type: boolean
  inputBinding:
    prefix: -index
- id: in_bwa_pl
  doc: "-l   BWA runs ~8% quicker when using the tcmalloc library from\nhttps://github.com/gperftools/\
    \ (assuming number of cores not exceeded)\nIf available specify the path to 'gperftools/lib/libtcmalloc_minimal.so'."
  type: boolean
  inputBinding:
    prefix: -bwa_pl
- id: in_jobs
  doc: -j   For a parallel step report the number of jobs required
  type: boolean
  inputBinding:
    prefix: -jobs
- id: in_man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_sc
  doc: ''
  type: boolean
  inputBinding:
    prefix: -sc
- id: in_c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: in_n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: in_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: in_t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: in_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: in_don
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_folder
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_optional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_27
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_required
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_30
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_split
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_33
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_quoted
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_41
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_42
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_string
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_44
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_frage_ments
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_result
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_applied
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 4
- id: in_use_dot
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_x
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_million
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_pass
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_repairs
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_var_56
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_when
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: -o   Folder to output result to.
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_sample_name_applied
  doc: -s   Sample name to be applied to output file.
  type: File
  outputBinding:
    glob: $(inputs.in_sample_name_applied)
cwlVersion: v1.1
baseCommand:
- bwa_mem.pl
