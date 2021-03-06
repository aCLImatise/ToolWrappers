class: CommandLineTool
id: ../../../bismark.cwl
inputs:
- id: in_commaseparated_list_bismark
  doc: "Comma-separated list of files containing the #1 mates (filename usually includes\n\
    \"_1\"), e.g. flyA_1.fq,flyB_1.fq). Sequences specified with this option must\n\
    correspond file-for-file and read-for-read with those specified in <mates2>.\n\
    Reads may be a mix of different lengths. Bismark will produce one mapping result\n\
    and one report file per paired-end input file pair."
  type: long
  inputBinding:
    prefix: '-1'
- id: in_commaseparated_list_files
  doc: "Comma-separated list of files containing the #2 mates (filename usually includes\n\
    \"_2\"), e.g. flyA_2.fq,flyB_2.fq). Sequences specified with this option must\n\
    correspond file-for-file and read-for-read with those specified in <mates1>.\n\
    Reads may be a mix of different lengths."
  type: long
  inputBinding:
    prefix: '-2'
- id: in_se_slash_single_end
  doc: "Sets single-end mapping mode explicitly giving a list of file names as <list>.\n\
    The filenames may be provided as a comma [,] or colon [:] separated list."
  type: File
  inputBinding:
    prefix: --se/--single_end
- id: in_q_slash_fast_q
  doc: "The query input files (specified as <mate1>,<mate2> or <singles> are FASTQ\n\
    files (usually having extension .fg or .fastq). This is the default. See also\n\
    --solexa-quals."
  type: boolean
  inputBinding:
    prefix: -q/--fastq
- id: in_f_slash_fast_a
  doc: "The query input files (specified as <mate1>,<mate2> or <singles> are FASTA\n\
    files (usually having extensions .fa, .mfa, .fna or similar). All quality values\n\
    are assumed to be 40 on the Phred scale. FASTA files are expected to contain both\n\
    the read name and the sequence on a single line (and not spread over several lines)."
  type: boolean
  inputBinding:
    prefix: -f/--fasta
- id: in_s_slash_skip
  doc: Skip (i.e. do not align) the first <int> reads or read pairs from the input.
  type: long
  inputBinding:
    prefix: -s/--skip
- id: in_us_lash_up_to
  doc: 'Only aligns the first <int> reads or read pairs from the input. Default: no
    limit.'
  type: long
  inputBinding:
    prefix: -u/--upto
- id: in_phred_three_three_quals
  doc: 'FASTQ qualities are ASCII chars equal to the Phred quality plus 33. Default:
    ON.'
  type: boolean
  inputBinding:
    prefix: --phred33-quals
- id: in_phred_six_four_quals
  doc: 'FASTQ qualities are ASCII chars equal to the Phred quality plus 64. Default:
    off.'
  type: boolean
  inputBinding:
    prefix: --phred64-quals
- id: in_path_to_bowtie_two
  doc: "The full path </../../> to the Bowtie 2 installation on your system. If not\n\
    specified it is assumed that Bowtie 2 is in the PATH."
  type: boolean
  inputBinding:
    prefix: --path_to_bowtie2
- id: in_path_to_his_at_two
  doc: "The full path </../../> to the HISAT2 installation on your system. If not\n\
    specified it is assumed that HISAT2 is in the PATH."
  type: boolean
  inputBinding:
    prefix: --path_to_hisat2
- id: in_sets_number_allowed
  doc: "Sets the number of mismatches to allowed in a seed alignment during multiseed\
    \ alignment.\nCan be set to 0 or 1. Setting this higher makes alignment slower\
    \ (often much slower)\nbut increases sensitivity. Default: 0. This option is only\
    \ available for Bowtie 2 (for\nBowtie 1 see -n)."
  type: long
  inputBinding:
    prefix: -N
- id: in_sets_length_align
  doc: "Sets the length of the seed substrings to align during multiseed alignment.\
    \ Smaller values\nmake alignment slower but more senstive. Default: the --sensitive\
    \ preset of Bowtie 2 is\nused by default, which sets -L to 20. maximum of L can\
    \ be set to 32. The length of the seed\nwould effect the alignment speed dramatically\
    \ while the larger L, the faster the aligment.\nThis option is only available\
    \ for Bowtie 2 (for Bowtie 1 see -l)."
  type: long
  inputBinding:
    prefix: -L
- id: in_ignore_quals
  doc: "When calculating a mismatch penalty, always consider the quality value at\
    \ the mismatched\nposition to be the highest possible, regardless of the actual\
    \ value. I.e. input is treated\nas though all quality values are high. This is\
    \ also the default behavior when the input\ndoesn't specify quality values (e.g.\
    \ in -f mode). This option is invariable and on by default."
  type: boolean
  inputBinding:
    prefix: --ignore-quals
- id: in_i_slash_mini_ns
  doc: "The minimum insert size for valid paired-end alignments. E.g. if -I 60 is\
    \ specified and\na paired-end alignment consists of two 20-bp alignments in the\
    \ appropriate orientation\nwith a 20-bp gap between them, that alignment is considered\
    \ valid (as long as -X is also\nsatisfied). A 19-bp gap would not be valid in\
    \ that case. Default: 0."
  type: long
  inputBinding:
    prefix: -I/--minins
- id: in_x_slash_max_ins
  doc: "The maximum insert size for valid paired-end alignments. E.g. if -X 100 is\
    \ specified and\na paired-end alignment consists of two 20-bp alignments in the\
    \ proper orientation with a\n60-bp gap between them, that alignment is considered\
    \ valid (as long as -I is also satisfied).\nA 61-bp gap would not be valid in\
    \ that case. Default: 500."
  type: long
  inputBinding:
    prefix: -X/--maxins
- id: in_parallel
  doc: "(May also be --multicore <int>) Sets the number of parallel instances of Bismark\
    \ to be run concurrently.\nThis forks the Bismark alignment step very early on\
    \ so that each individual Spawn of Bismark processes\nonly every n-th sequence\
    \ (n being set by --parallel). Once all processes have completed,\nthe individual\
    \ BAM files, mapping reports, unmapped or ambiguous FastQ files are merged\ninto\
    \ single files in very much the same way as they would have been generated running\
    \ Bismark\nconventionally with only a single instance.\nIf system resources are\
    \ plentiful this is a viable option to speed up the alignment process\n(we observed\
    \ a near linear speed increase for up to --parallel 8 tested). However, please\
    \ note\nthat a typical Bismark run will use several cores already (Bismark itself,\
    \ 2 or 4 threads of\nBowtie2/HISAT2, Samtools, gzip etc...) and ~10-16GB of memory\
    \ depending on the choice of aligner\nand genome. WARNING: Bismark Parallel (BP?)\
    \ is resource hungry! Each value of --parallel specified\nwill effectively lead\
    \ to a linear increase in compute and memory requirements, so --parallel 4 for\n\
    e.g. the GRCm38 mouse genome will probably use ~20 cores and eat ~40GB or RAM,\
    \ but at the same time\nreduce the alignment time to ~25-30%. You have been warned."
  type: long
  inputBinding:
    prefix: --parallel
- id: in_local
  doc: "In this mode, it is not required that the entire read aligns from one end\
    \ to the other. Rather, some\ncharacters may be omitted (“soft-clipped”) from\
    \ the ends in order to achieve the greatest possible\nalignment score. For Bowtie\
    \ 2, the match bonus --ma (default: 2) is used in this mode, and the best possible\n\
    alignment score is equal to the match bonus (--ma) times the length of the read.\
    \ This is mutually exclusive with\nend-to-end alignments. For HISAT2, it is currently\
    \ not exactly known how the best alignment is calculated.\nDEFAULT: OFF."
  type: boolean
  inputBinding:
    prefix: --local
- id: in_non_directional
  doc: "The sequencing library was constructed in a non strand-specific manner, alignments\
    \ to all four\nbisulfite strands will be reported. Default: OFF.\n(The current\
    \ Illumina protocol for BS-Seq is directional, in which case the strands complementary\n\
    to the original strands are merely theoretical and should not exist in reality.\
    \ Specifying directional\nalignments (which is the default) will only run 2 alignment\
    \ threads to the original top (OT)\nor bottom (OB) strands in parallel and report\
    \ these alignments. This is the recommended option\nfor sprand-specific libraries)."
  type: boolean
  inputBinding:
    prefix: --non_directional
- id: in_pb_at
  doc: "This options may be used for PBAT-Seq libraries (Post-Bisulfite Adapter Tagging;\
    \ Kobayashi et al.,\nPLoS Genetics, 2012). This is essentially the exact opposite\
    \ of alignments in 'directional' mode,\nas it will only launch two alignment threads\
    \ to the CTOT and CTOB strands instead of the normal OT\nand OB ones. Use this\
    \ option only if you are certain that your libraries were constructed following\n\
    a PBAT protocol (if you don't know what PBAT-Seq is you should not specify this\
    \ option). The option\n--pbat works only for FastQ files (in both Bowtie and Bowtie\
    \ 2 mode) and using uncompressed\ntemporary files only)."
  type: boolean
  inputBinding:
    prefix: --pbat
- id: in_sam_no_hd
  doc: "Suppress SAM header lines (starting with @). This might be useful when very\
    \ large input files are\nsplit up into several smaller files to run concurrently\
    \ and the output files are to be merged."
  type: boolean
  inputBinding:
    prefix: --sam-no-hd
- id: in_rg_tag
  doc: "Write out a Read Group tag to the resulting SAM/BAM file. This will write\
    \ the following line to the\nSAM header: @RG PL: ILLUMINA ID:SAMPLE SM:SAMPLE\
    \ ; to set ID and SM see --rg_id and --rg_sample.\nIn addition each read receives\
    \ an RG:Z:RG-ID tag. Default: OFF."
  type: File
  inputBinding:
    prefix: --rg_tag
- id: in_rg_id
  doc: Sets the ID field in the @RG header line. The default is 'SAMPLE'.
  type: string
  inputBinding:
    prefix: --rg_id
- id: in_rg_sample
  doc: "Sets the SM field in the @RG header line; can't be set without setting --rg_id\
    \ as well. The default is\n'SAMPLE'."
  type: string
  inputBinding:
    prefix: --rg_sample
- id: in_un_slash_unmapped
  doc: "Write all reads that could not be aligned to a file in the output directory.\
    \ Written reads will\nappear as they did in the input, without any translation\
    \ of quality values that may have\ntaken place within Bowtie or Bismark. Paired-end\
    \ reads will be written to two parallel files with _1\nand _2 inserted in their\
    \ filenames, i.e. _unmapped_reads_1.txt and unmapped_reads_2.txt. Reads\nwith\
    \ more than one valid alignment with the same number of lowest mismatches (ambiguous\
    \ mapping)\nare also written to _unmapped_reads.txt unless the option --ambiguous\
    \ is specified as well."
  type: boolean
  inputBinding:
    prefix: -un/--unmapped
- id: in_ambiguous
  doc: "Write all reads which produce more than one valid alignment with the same\
    \ number of lowest\nmismatches or other reads that fail to align uniquely to a\
    \ file in the output directory.\nWritten reads will appear as. they did in the\
    \ input, without any of the translation of quality\nvalues that may have taken\
    \ place within Bowtie or Bismark. Paired-end reads will be written to two\nparallel\
    \ files with _1 and _2 inserted in their filenames, i.e. _ambiguous_reads_1.txt\
    \ and\n_ambiguous_reads_2.txt. These reads are not written to the file specified\
    \ with --un."
  type: boolean
  inputBinding:
    prefix: --ambiguous
- id: in_oslash_output_dir
  doc: "Write all output files into this directory. By default the output files will\
    \ be written into\nthe same folder as the input file(s). If the specified folder\
    \ does not exist, Bismark will attempt\nto create it first. The path to the output\
    \ folder can be either relative or absolute."
  type: File
  inputBinding:
    prefix: -o/--output_dir
- id: in_temp_dir
  doc: "Write temporary files to this directory instead of into the same directory\
    \ as the input files. If\nthe specified folder does not exist, Bismark will attempt\
    \ to create it first. The path to the\ntemporary folder can be either relative\
    \ or absolute."
  type: File
  inputBinding:
    prefix: --temp_dir
- id: in_non_bs_mm
  doc: "Optionally, outputs an extra column specifying the number of non-bisulfite\
    \ mismatches a read has.\nThis option is only available in end-to-end mode. The\
    \ value is just the number of actual non-bisulfite\nmismatches and ignores potential\
    \ insertions or deletions.\nThe format for single-end reads and read 1 of paired-end\
    \ reads is 'XA:Z:number of mismatches'\nand 'XB:Z:number of mismatches' for read\
    \ 2 of paired-end reads."
  type: boolean
  inputBinding:
    prefix: --non_bs_mm
- id: in_gzip
  doc: "Temporary bisulfite conversion files will be written out in a GZIP compressed\
    \ form to save disk\nspace. This option is available for most alignment modes\
    \ but is not available for paired-end FastA\nfiles. This option might be somewhat\
    \ slower than writing out uncompressed files, but this awaits\nfurther testing."
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_sam
  doc: "The output will be written out in SAM format instead of the default BAM format.\
    \ Be warned that this\nrequires ~10 times more disk space. --sam is not compatible\
    \ with the option --parallel."
  type: boolean
  inputBinding:
    prefix: --sam
- id: in_bam
  doc: "Bismark will attempt to use the path to Samtools that was specified with '--samtools_path',\
    \ or, if it hasn't\nbeen specified, attempt to find Samtools in the PATH. If no\
    \ installation of Samtools can be found,\nthe SAM output will be compressed with\
    \ GZIP instead (yielding a .sam.gz output file). Default: ON."
  type: File
  inputBinding:
    prefix: --bam
- id: in_cram
  doc: Writes the output to a CRAM file instead of BAM. This requires the use of Samtools
    1.2 or higher.
  type: File
  inputBinding:
    prefix: --cram
- id: in_cram_ref
  doc: "CRAM output requires you to specify a reference genome as a single FastA file.\
    \ If this single-FastA\nreference file is not supplied explicitly it will be regenerated\
    \ from the genome .fa sequence(s)\nused for the Bismark run and written to a file\
    \ called 'Bismark_genome_CRAM_reference.mfa' into the\noputput directory."
  type: File
  inputBinding:
    prefix: --cram_ref
- id: in_sam_tools_path
  doc: "The path to your Samtools installation, e.g. /home/user/samtools/. Does not\
    \ need to be specified\nexplicitly if Samtools is in the PATH already."
  type: boolean
  inputBinding:
    prefix: --samtools_path
- id: in_prefix
  doc: "Prefixes <prefix> to the output filenames. Trailing dots will be replaced\
    \ by a single one. For\nexample, '--prefix test' with 'file.fq' would result in\
    \ the output file 'test.file.fq_bismark.sam' etc."
  type: File
  inputBinding:
    prefix: --prefix
- id: in_b_slash_basename
  doc: "Write all output to files starting with this base file name. For example,\
    \ '--basename foo'\nwould result in the files 'foo.bam' and 'foo_SE_report.txt'\
    \ (or its paired-end equivalent). Takes\nprecedence over --prefix. Be advised\
    \ that you should not use this option in conjunction with supplying\nlists of\
    \ files to be processed consecutively, as all output files will constantly overwrite\
    \ each other."
  type: File
  inputBinding:
    prefix: -B/--basename
- id: in_old_flag
  doc: "Only in paired-end SAM mode, uses the FLAG values used by Bismark v0.8.2 and\
    \ before. In addition,\nthis options appends /1 and /2 to the read IDs for reads\
    \ 1 and 2 relative to the input file. Since\nboth the appended read IDs and custom\
    \ FLAG values may cause problems with some downstream tools\nsuch as Picard, new\
    \ defaults were implemented as of version 0.8.3.\ndefault                    \
    \     old_flag\n===================              ===================\nRead 1 \
    \      Read 2              Read 1       Read 2\nOT:         99          147  \
    \                67          131\nOB:         83          163                \
    \ 115          179\nCTOT:      147           99                  67          131\n\
    CTOB:      163           83                 115          179"
  type: boolean
  inputBinding:
    prefix: --old_flag
- id: in_am_big_bam
  doc: "For reads that have multiple alignments a random alignment is written out\
    \ to a special file ending in\n'.ambiguous.bam'. The alignments are in Bowtie2\
    \ format and do not any contain Bismark specific\nentries such as the methylation\
    \ call etc. These ambiguous BAM files are intended to be used as\ncoverage estimators\
    \ for variant callers."
  type: File
  inputBinding:
    prefix: --ambig_bam
- id: in_nucleotide_coverage
  doc: "Calculates the mono- and di-nucleotide sequence composition of covered positions\
    \ in the analysed BAM\nfile and compares it to the genomic average composition\
    \ once alignments are complete by calling 'bam2nuc'.\nSince this calculation may\
    \ take a while, bam2nuc attempts to write the genomic sequence composition\ninto\
    \ a file called 'genomic_nucleotide_frequencies.txt' indside the reference genome\
    \ folder so it can\nbe re-used the next time round instead of calculating it once\
    \ again. If a file 'nucleotide_stats.txt' is\nfound with the Bismark reports it\
    \ will be automatically detected and used for the Bismark HTML report.\nThis option\
    \ works only for BAM or CRAM files."
  type: boolean
  inputBinding:
    prefix: --nucleotide_coverage
- id: in_icpc
  doc: "This option will truncate read IDs at the first space or tab it encounters,\
    \ which are sometimes used to add\ncomments to a FastQ entry (instead of replacing\
    \ them with underscores (_) as is the default behaviour). The\nopion is deliberately\
    \ somewhat cryptic (\"I couldn't possibly comment\"), as it only becomes relevant\
    \ when R1 and R2\nof read pairs are mapped separately in single-end mode, and\
    \ then re-paired afterwards (the SAM format dictates\nthat R1 and R2 have the\
    \ same read ID). Paired-end mapping already creates BAM files with identical read\
    \ IDs.\nFor more information please see here: https://github.com/FelixKrueger/Bismark/issues/236.\
    \ Default: OFF."
  type: boolean
  inputBinding:
    prefix: --icpc
- id: in_h_slash_help
  doc: Displays this help file.
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_v_slash_version
  doc: Displays version information.
  type: boolean
  inputBinding:
    prefix: -v/--version
- id: in_bowtie_two
  doc: "Default: ON. Uses Bowtie 2 as default aligner. Bismark limits Bowtie 2 to\
    \ only perform end-to-end\nalignments, i.e. searches for alignments involving\
    \ all read characters (also called\nuntrimmed or unclipped alignments). Bismark\
    \ assumes that raw sequence data is adapter\nand/or quality trimmed where appropriate.\
    \ Both small (.bt2) and large (.bt2l) Bowtie 2\nindexes are supported. To use\
    \ HISAT2 instead of Bowtie 2 please see option --hisat2."
  type: boolean
  inputBinding:
    prefix: --bowtie2
- id: in_no_dovetail
  doc: "It is possible, though unusual, for the mates to \"dovetail\", with the mates\
    \ seemingly extending\n\"past\" each other as in this example:\nMate 1:      \
    \           GTCAGCTACGATATTGTTTGGGGTGACACATTACGC\nMate 2:            TATGAGTCAGCTACGATATTGTTTGGGGTGACACAT\n\
    Reference: GCAGATTATATGAGTCAGCTACGATATTGTTTGGGGTGACACATTACGCGTCTTTGAC\nBy default,\
    \ dovetailing is considered inconsistent with concordant alignment, but by default\n\
    Bismark calls Bowtie 2 with --dovetail, causing it to consider dovetailing alignments\
    \ as\nconcordant. This becomes relevant whenever reads are clipped from their\
    \ 5' end prior to mapping,\ne.g. because of quality or bias issues.\nSpecify --no_dovetail\
    \ to turn off this behaviour for paired-end libraries. Default: OFF."
  type: boolean
  inputBinding:
    prefix: --no_dovetail
- id: in_his_at_two
  doc: "Uses HISAT2 instead of Bowtie 2. Bismark uses HISAT2 in end-to-end mode by\
    \ default,\ni.e. searches for alignments involving all read characters (also called\
    \ untrimmed or unclipped alignments)\nusing the option '--no-softclipping'. Bismark\
    \ assumes that raw sequence data is adapter and/or quality\ntrimmed where appropriate.\
    \ From v0.22.0 onwards, Bismark also supports the local alignment mode of\nHISAT2\
    \ (please see --local). Both small (.ht2) and large (.ht2l) HISAT2 indexes are\
    \ supported. Default: OFF."
  type: boolean
  inputBinding:
    prefix: --hisat2
- id: in_no_spliced_alignment
  doc: 'Disable spliced alignment. Default: spliced-alignments are performed.'
  type: boolean
  inputBinding:
    prefix: --no-spliced-alignment
- id: in_known_splice_site_in_file
  doc: Provide a list of known splice sites.
  type: File
  inputBinding:
    prefix: --known-splicesite-infile
- id: in_no_mixed
  doc: "This option disables the behavior to try to find alignments for the individual\
    \ mates if\nit cannot find a concordant or discordant alignment for a pair. This\
    \ option is invariably on by default."
  type: boolean
  inputBinding:
    prefix: --no-mixed
- id: in_no_discordant
  doc: "Normally, Bowtie 2 or HISAT2 look for discordant alignments if it cannot find\
    \ any concordant alignments.\nA discordant alignment is an alignment where both\
    \ mates align uniquely, but that does not\nsatisfy the paired-end constraints\
    \ (--fr/--rf/--ff, -I, -X). This option disables that behavior\nand it is on by\
    \ default."
  type: boolean
  inputBinding:
    prefix: --no-discordant
- id: in_int_consecutive_attempts
  doc: "Up to <int> consecutive seed extension attempts can \"fail\" before Bowtie\
    \ 2 moves on, using\nthe alignments found so far. A seed extension \"fails\" if\
    \ it does not yield a new best or a\nnew second-best alignment. Default: 15."
  type: long
  inputBinding:
    prefix: -D
- id: in_int_maximum_number
  doc: "<int> is the maximum number of times Bowtie 2 will \"re-seed\" reads with\
    \ repetitive seeds.\nWhen \"re-seeding,\" Bowtie 2 simply chooses a new set of\
    \ reads (same length, same number of\nmismatches allowed) at different offsets\
    \ and searches for more alignments. A read is considered\nto have repetitive seeds\
    \ if the total number of seed hits divided by the number of seeds\nthat aligned\
    \ at least once is greater than 300. Default: 2."
  type: long
  inputBinding:
    prefix: -R
- id: in_launch_nthreads_parallel
  doc: "Launch NTHREADS parallel search threads (default: 1). Threads will run on\
    \ separate processors/cores\nand synchronize when parsing reads and outputting\
    \ alignments. Searching for alignments is highly\nparallel, and speedup is close\
    \ to linear. Increasing -p increases Bowtie 2's memory footprint.\nE.g. when aligning\
    \ to a human genome index, increasing -p from 1 to 8 increases the memory footprint\n\
    by a few hundred megabytes. This option is only available if bowtie is linked\
    \ with the pthreads\nlibrary (i.e. if BOWTIE_PTHREADS=0 is not specified at build\
    \ time). In addition, this option will\nautomatically use the option '--reorder',\
    \ which guarantees that output SAM records are printed in\nan order corresponding\
    \ to the order of the reads in the original input file, even when -p is set\n\
    greater than 1 (Bismark requires the Bowtie 2 output to be this way). Specifying\
    \ --reorder and\nsetting -p greater than 1 causes Bowtie 2 to run somewhat slower\
    \ and use somewhat more memory then\nif --reorder were not specified. Has no effect\
    \ if -p is set to 1, since output order will naturally\ncorrespond to input order\
    \ in that case."
  type: File
  inputBinding:
    prefix: -p
- id: in_score_min
  doc: "Sets a function governing the minimum alignment score needed for an alignment\
    \ to be considered\n\"valid\" (i.e. good enough to report). This is a function\
    \ of read length.\nIn end-to-end mode (default), and --local mode for HISAT2 only,\
    \ --score_min is set as a linear function\nand is set as <L,value,value>.\nFor\
    \ instance, specifying L,0,-0.2 sets the minimum-score function f to f(x) = 0\
    \ + (-0.2) * x, where x\nis the read length. The default for end-to-end (global)\
    \ alignments is: L,0,-0.2.\nIn --local mode for Bowtie 2, the function is logarithmic\
    \ and is set as <G,value,value>. For instance, specifying\nG,20,8 sets the minimum-score\
    \ function f to f(x) = 20 + 8 * ln(x), where x is the read length.\nThe default\
    \ is for local alignments in Bowtie 2 mode is: G,20,8.\nSee also: setting function\
    \ options at http://bowtie-bio.sourceforge.net/bowtie2."
  type: long
  inputBinding:
    prefix: --score_min
- id: in_rdg
  doc: ",<int2>      Sets the read gap open (<int1>) and extend (<int2>) penalties.\
    \ A read gap of length N gets a penalty\nof <int1> + N * <int2>. Default: 5, 3."
  type: long
  inputBinding:
    prefix: --rdg
- id: in_rfg
  doc: ",<int2>      Sets the reference gap open (<int1>) and extend (<int2>) penalties.\
    \ A reference gap of length N gets\na penalty of <int1> + N * <int2>. Default:\
    \ 5, 3."
  type: long
  inputBinding:
    prefix: --rfg
- id: in_genome_folder
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rg_tag
  doc: "Write out a Read Group tag to the resulting SAM/BAM file. This will write\
    \ the following line to the\nSAM header: @RG PL: ILLUMINA ID:SAMPLE SM:SAMPLE\
    \ ; to set ID and SM see --rg_id and --rg_sample.\nIn addition each read receives\
    \ an RG:Z:RG-ID tag. Default: OFF."
  type: File
  outputBinding:
    glob: $(inputs.in_rg_tag)
- id: out_bam
  doc: "Bismark will attempt to use the path to Samtools that was specified with '--samtools_path',\
    \ or, if it hasn't\nbeen specified, attempt to find Samtools in the PATH. If no\
    \ installation of Samtools can be found,\nthe SAM output will be compressed with\
    \ GZIP instead (yielding a .sam.gz output file). Default: ON."
  type: File
  outputBinding:
    glob: $(inputs.in_bam)
- id: out_cram
  doc: Writes the output to a CRAM file instead of BAM. This requires the use of Samtools
    1.2 or higher.
  type: File
  outputBinding:
    glob: $(inputs.in_cram)
- id: out_cram_ref
  doc: "CRAM output requires you to specify a reference genome as a single FastA file.\
    \ If this single-FastA\nreference file is not supplied explicitly it will be regenerated\
    \ from the genome .fa sequence(s)\nused for the Bismark run and written to a file\
    \ called 'Bismark_genome_CRAM_reference.mfa' into the\noputput directory."
  type: File
  outputBinding:
    glob: $(inputs.in_cram_ref)
- id: out_prefix
  doc: "Prefixes <prefix> to the output filenames. Trailing dots will be replaced\
    \ by a single one. For\nexample, '--prefix test' with 'file.fq' would result in\
    \ the output file 'test.file.fq_bismark.sam' etc."
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_b_slash_basename
  doc: "Write all output to files starting with this base file name. For example,\
    \ '--basename foo'\nwould result in the files 'foo.bam' and 'foo_SE_report.txt'\
    \ (or its paired-end equivalent). Takes\nprecedence over --prefix. Be advised\
    \ that you should not use this option in conjunction with supplying\nlists of\
    \ files to be processed consecutively, as all output files will constantly overwrite\
    \ each other."
  type: File
  outputBinding:
    glob: $(inputs.in_b_slash_basename)
- id: out_am_big_bam
  doc: "For reads that have multiple alignments a random alignment is written out\
    \ to a special file ending in\n'.ambiguous.bam'. The alignments are in Bowtie2\
    \ format and do not any contain Bismark specific\nentries such as the methylation\
    \ call etc. These ambiguous BAM files are intended to be used as\ncoverage estimators\
    \ for variant callers."
  type: File
  outputBinding:
    glob: $(inputs.in_am_big_bam)
cwlVersion: v1.1
baseCommand:
- bismark
