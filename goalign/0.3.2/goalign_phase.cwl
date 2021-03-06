class: CommandLineTool
id: ../../../goalign_phase.cwl
inputs:
- id: in_aa_output
  doc: Output Met "phased" aa FASTA file (default "none")
  type: File
  inputBinding:
    prefix: --aa-output
- id: in_cut_end
  doc: Iftrue, then also remove the end of sequences that do not align with orf
  type: boolean
  inputBinding:
    prefix: --cut-end
- id: in_gap_extend
  doc: Score for extending a gap  (default -0.5)
  type: double
  inputBinding:
    prefix: --gap-extend
- id: in_gap_open
  doc: Score for opening a gap  (default -10)
  type: double
  inputBinding:
    prefix: --gap-open
- id: in_genetic_code
  doc: 'Genetic Code: standard, mitoi (invertebrate mitochondrial) or mitov (vertebrate
    mitochondrial) (default "standard")'
  type: string
  inputBinding:
    prefix: --genetic-code
- id: in_len_cut_off
  doc: Length cutoff, over orf length, to consider sequence hits (-1==No cutoff) (default
    -1)
  type: double
  inputBinding:
    prefix: --len-cutoff
- id: in_log
  doc: 'Output log: positions of the considered Start for each sequence (default "none")'
  type: string
  inputBinding:
    prefix: --log
- id: in_match
  doc: Score for a match for pairwise alignment (if omitted, then take substitution
    matrix) (default 1)
  type: double
  inputBinding:
    prefix: --match
- id: in_match_cut_off
  doc: Nb Matches cutoff, over alignment length, to consider sequence hits (-1==No
    cutoff) (default 0.5)
  type: double
  inputBinding:
    prefix: --match-cutoff
- id: in_mismatch
  doc: Score for a mismatch for pairwise alignment (if omitted, then take substitution
    matrix) (default -1)
  type: double
  inputBinding:
    prefix: --mismatch
- id: in_output
  doc: Output "phased" FASTA file (default "stdout")
  type: File
  inputBinding:
    prefix: --output
- id: in_ref_orf
  doc: Reference ORF to phase against (if none is given, then will try to get the
    longest orf in the input data) (default "none")
  type: string
  inputBinding:
    prefix: --ref-orf
- id: in_reverse
  doc: Search ALSO in the reverse strand (in addition to the forward strand)
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_unaligned
  doc: Considers sequences as unaligned and only format fasta is accepted (phylip,
    nexus,... options are ignored)
  type: boolean
  inputBinding:
    prefix: --unaligned
- id: in_align
  doc: Alignment input file (default "stdin")
  type: File
  inputBinding:
    prefix: --align
- id: in_auto_detect
  doc: Auto detects input format (overrides -p, -x and -u)
  type: boolean
  inputBinding:
    prefix: --auto-detect
- id: in_clustal
  doc: Alignment is in clustal? default fasta
  type: boolean
  inputBinding:
    prefix: --clustal
- id: in_ignore_identical
  doc: Ignore duplicated sequences that have the same name and same sequences
  type: boolean
  inputBinding:
    prefix: --ignore-identical
- id: in_input_strict
  doc: Strict phylip input format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --input-strict
- id: in_nexus
  doc: Alignment is in nexus? default fasta
  type: boolean
  inputBinding:
    prefix: --nexus
- id: in_no_block
  doc: Write Phylip sequences without space separated blocks (only used with -p)
  type: boolean
  inputBinding:
    prefix: --no-block
- id: in_one_line
  doc: Write Phylip sequences on 1 line (only used with -p)
  type: boolean
  inputBinding:
    prefix: --one-line
- id: in_output_strict
  doc: Strict phylip output format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --output-strict
- id: in_phylip
  doc: Alignment is in phylip? default fasta
  type: boolean
  inputBinding:
    prefix: --phylip
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (default 1)
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_aa_output
  doc: Output Met "phased" aa FASTA file (default "none")
  type: File
  outputBinding:
    glob: $(inputs.in_aa_output)
- id: out_output
  doc: Output "phased" FASTA file (default "stdout")
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- goalign
- phase
