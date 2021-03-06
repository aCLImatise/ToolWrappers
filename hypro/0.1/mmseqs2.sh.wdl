version 1.0

task Mmseqs2sh {
  input {
    Int? dont_split_seq_by_len
    Int? dbtype
    Int? dont_shuffle
    Int? id_offset
    Int? max_seq_len
    Int? compressed
    Int? verbosity_level_nothing
    File? seed_sub_mat
    Int? kmer_size_range
    Int? alph_size
    Int? comp_bias_corr
    Int? max_seqs
    Int? mask
    Int? mask_lower_case
    Int? spaced_km_er_mode
    String? spaced_km_er_pattern
    Float? sensitivity_faster_fast
    Int? k_score
    Int? split
    Int? split_memory_limit
    Int? check_compatible
    Int? search_type
    Int? min_length
    Int? max_length
    Int? max_gaps
    Int? contig_start_mode
    Int? contig_end_mode
    Int? orf_start_mode
    Int? forward_frames
    Int? reverse_frames
    Int? translation_table
    Int? translate
    Boolean? use_all_table_starts
    Boolean? add_orf_stop
    Int? sequence_overlap
    Boolean? remove_tmp_files
    Int? threads
    Int? strand
    Boolean? add_self_matches
    Int? split_mode
    Int? diag_score
    Int? exact_km_er_matching
    Int? min_un_gapped_score
    File? local_tmp
    Int? disk_space_limit
    Boolean? add_string_convert
    Int? alignment_mode
    Float? list_matches_evalue
    Float? min_seq_id
    Int? min_aln_len
    Int? seq_id_mode
    Int? alt_ali
    Float? list_matches_fraction
    Int? cov_mode
    Boolean? realign
    Int? max_rejected
    Int? max_accept
    Float? score_bias
    Int? gap_open
    Int? gap_extend
    Float? pc_a
    Float? pcb
    Int? mask_profile
    Float? e_profile
    Boolean? wg
    Int? filter_msa
    Float? max_seq_id
    Float? qid
    Float? qsc
    Float? cov
    Int? diff
    Int? num_iterations
    Boolean? slice_search
    Int? re_score_mode
    Float? start_sens
    Int? sens_steps
    File? sub_mat
    Int? db_load_mode
    Int? mpi_runner
    Boolean? force_reuse
    Boolean? filter_hits
    Int? sort_results
    Boolean? omit_consensus
    Int? chain_alignments
    Int? merge_query
    Int? format_mode
    String? format_output
    String mm_seqs
    String convert_al_is
    String created_b
    String create_index
    String search
  }
  command <<<
    mmseqs2_sh \
      ~{mm_seqs} \
      ~{convert_al_is} \
      ~{created_b} \
      ~{create_index} \
      ~{search} \
      ~{if defined(dont_split_seq_by_len) then ("--dont-split-seq-by-len " +  '"' + dont_split_seq_by_len + '"') else ""} \
      ~{if defined(dbtype) then ("--dbtype " +  '"' + dbtype + '"') else ""} \
      ~{if defined(dont_shuffle) then ("--dont-shuffle " +  '"' + dont_shuffle + '"') else ""} \
      ~{if defined(id_offset) then ("--id-offset " +  '"' + id_offset + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_nothing) then ("-v " +  '"' + verbosity_level_nothing + '"') else ""} \
      ~{if defined(seed_sub_mat) then ("--seed-sub-mat " +  '"' + seed_sub_mat + '"') else ""} \
      ~{if defined(kmer_size_range) then ("-k " +  '"' + kmer_size_range + '"') else ""} \
      ~{if defined(alph_size) then ("--alph-size " +  '"' + alph_size + '"') else ""} \
      ~{if defined(comp_bias_corr) then ("--comp-bias-corr " +  '"' + comp_bias_corr + '"') else ""} \
      ~{if defined(max_seqs) then ("--max-seqs " +  '"' + max_seqs + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(mask_lower_case) then ("--mask-lower-case " +  '"' + mask_lower_case + '"') else ""} \
      ~{if defined(spaced_km_er_mode) then ("--spaced-kmer-mode " +  '"' + spaced_km_er_mode + '"') else ""} \
      ~{if defined(spaced_km_er_pattern) then ("--spaced-kmer-pattern " +  '"' + spaced_km_er_pattern + '"') else ""} \
      ~{if defined(sensitivity_faster_fast) then ("-s " +  '"' + sensitivity_faster_fast + '"') else ""} \
      ~{if defined(k_score) then ("--k-score " +  '"' + k_score + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(split_memory_limit) then ("--split-memory-limit " +  '"' + split_memory_limit + '"') else ""} \
      ~{if defined(check_compatible) then ("--check-compatible " +  '"' + check_compatible + '"') else ""} \
      ~{if defined(search_type) then ("--search-type " +  '"' + search_type + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(max_gaps) then ("--max-gaps " +  '"' + max_gaps + '"') else ""} \
      ~{if defined(contig_start_mode) then ("--contig-start-mode " +  '"' + contig_start_mode + '"') else ""} \
      ~{if defined(contig_end_mode) then ("--contig-end-mode " +  '"' + contig_end_mode + '"') else ""} \
      ~{if defined(orf_start_mode) then ("--orf-start-mode " +  '"' + orf_start_mode + '"') else ""} \
      ~{if defined(forward_frames) then ("--forward-frames " +  '"' + forward_frames + '"') else ""} \
      ~{if defined(reverse_frames) then ("--reverse-frames " +  '"' + reverse_frames + '"') else ""} \
      ~{if defined(translation_table) then ("--translation-table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(translate) then ("--translate " +  '"' + translate + '"') else ""} \
      ~{if (use_all_table_starts) then "--use-all-table-starts" else ""} \
      ~{if (add_orf_stop) then "--add-orf-stop" else ""} \
      ~{if defined(sequence_overlap) then ("--sequence-overlap " +  '"' + sequence_overlap + '"') else ""} \
      ~{if (remove_tmp_files) then "--remove-tmp-files" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if (add_self_matches) then "--add-self-matches" else ""} \
      ~{if defined(split_mode) then ("--split-mode " +  '"' + split_mode + '"') else ""} \
      ~{if defined(diag_score) then ("--diag-score " +  '"' + diag_score + '"') else ""} \
      ~{if defined(exact_km_er_matching) then ("--exact-kmer-matching " +  '"' + exact_km_er_matching + '"') else ""} \
      ~{if defined(min_un_gapped_score) then ("--min-ungapped-score " +  '"' + min_un_gapped_score + '"') else ""} \
      ~{if defined(local_tmp) then ("--local-tmp " +  '"' + local_tmp + '"') else ""} \
      ~{if defined(disk_space_limit) then ("--disk-space-limit " +  '"' + disk_space_limit + '"') else ""} \
      ~{if (add_string_convert) then "-a" else ""} \
      ~{if defined(alignment_mode) then ("--alignment-mode " +  '"' + alignment_mode + '"') else ""} \
      ~{if defined(list_matches_evalue) then ("-e " +  '"' + list_matches_evalue + '"') else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(min_aln_len) then ("--min-aln-len " +  '"' + min_aln_len + '"') else ""} \
      ~{if defined(seq_id_mode) then ("--seq-id-mode " +  '"' + seq_id_mode + '"') else ""} \
      ~{if defined(alt_ali) then ("--alt-ali " +  '"' + alt_ali + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(cov_mode) then ("--cov-mode " +  '"' + cov_mode + '"') else ""} \
      ~{if (realign) then "--realign" else ""} \
      ~{if defined(max_rejected) then ("--max-rejected " +  '"' + max_rejected + '"') else ""} \
      ~{if defined(max_accept) then ("--max-accept " +  '"' + max_accept + '"') else ""} \
      ~{if defined(score_bias) then ("--score-bias " +  '"' + score_bias + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(pc_a) then ("--pca " +  '"' + pc_a + '"') else ""} \
      ~{if defined(pcb) then ("--pcb " +  '"' + pcb + '"') else ""} \
      ~{if defined(mask_profile) then ("--mask-profile " +  '"' + mask_profile + '"') else ""} \
      ~{if defined(e_profile) then ("--e-profile " +  '"' + e_profile + '"') else ""} \
      ~{if (wg) then "--wg" else ""} \
      ~{if defined(filter_msa) then ("--filter-msa " +  '"' + filter_msa + '"') else ""} \
      ~{if defined(max_seq_id) then ("--max-seq-id " +  '"' + max_seq_id + '"') else ""} \
      ~{if defined(qid) then ("--qid " +  '"' + qid + '"') else ""} \
      ~{if defined(qsc) then ("--qsc " +  '"' + qsc + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if defined(diff) then ("--diff " +  '"' + diff + '"') else ""} \
      ~{if defined(num_iterations) then ("--num-iterations " +  '"' + num_iterations + '"') else ""} \
      ~{if (slice_search) then "--slice-search" else ""} \
      ~{if defined(re_score_mode) then ("--rescore-mode " +  '"' + re_score_mode + '"') else ""} \
      ~{if defined(start_sens) then ("--start-sens " +  '"' + start_sens + '"') else ""} \
      ~{if defined(sens_steps) then ("--sens-steps " +  '"' + sens_steps + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(mpi_runner) then ("--mpi-runner " +  '"' + mpi_runner + '"') else ""} \
      ~{if (force_reuse) then "--force-reuse" else ""} \
      ~{if (filter_hits) then "--filter-hits" else ""} \
      ~{if defined(sort_results) then ("--sort-results " +  '"' + sort_results + '"') else ""} \
      ~{if (omit_consensus) then "--omit-consensus" else ""} \
      ~{if defined(chain_alignments) then ("--chain-alignments " +  '"' + chain_alignments + '"') else ""} \
      ~{if defined(merge_query) then ("--merge-query " +  '"' + merge_query + '"') else ""} \
      ~{if defined(format_mode) then ("--format-mode " +  '"' + format_mode + '"') else ""} \
      ~{if defined(format_output) then ("--format-output " +  '"' + format_output + '"') else ""}
  >>>
  parameter_meta {
    dont_split_seq_by_len: "Dont split sequences by --max-seq-len [1, set to 0 to disable]"
    dbtype: "Database type 0: auto, 1: amino acid 2: nucleotides [0]"
    dont_shuffle: "Do not shuffle input database [1, set to 0 to disable]"
    id_offset: "numeric ids in index file are offset by this value  [0]"
    max_seq_len: "maximum sequence length (range 1-32768]) [65535]"
    compressed: "write results in compressed format [0]"
    verbosity_level_nothing: "verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info [3]"
    seed_sub_mat: "amino acid substitution matrix for kmer generation file [nucl:nucleotide.out,aa:VTML80.out]"
    kmer_size_range: "k-mer size in the range (0: set automatically to optimum) [0]"
    alph_size: "alphabet size (range 2-21) [21]"
    comp_bias_corr: "correct for locally biased amino acid composition (range 0-1) [1]"
    max_seqs: "Maximum result sequences per query allowed to pass the prefilter (this parameter affects sensitivity) [300]"
    mask: "mask sequences in k-mer stage 0: w/o low complexity masking, 1: with low complexity masking [1]"
    mask_lower_case: "lowercase letters will be excluded from k-mer search 0: include region, 1: exclude region [0]"
    spaced_km_er_mode: "0: use consecutive positions a k-mers; 1: use spaced k-mers [1]"
    spaced_km_er_pattern: "User-specified spaced k-mer pattern []"
    sensitivity_faster_fast: "sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive (range 1.0-7.5) [7.500]"
    k_score: "K-mer threshold for generating similar k-mer lists [0]"
    split: "Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1. [0]"
    split_memory_limit: "Set max memory per split. E.g. 800B, 5K, 10M, 1G. Defaults (0) to all available system memory. [0]"
    check_compatible: "0: Always recreate index, 1: Check if recreating index is needed, 2: Fail if index is incompatible [0]"
    search_type: "search type 0: auto 1: amino acid, 2: translated, 3: nucleotide [0]"
    min_length: "minimum codon number in open reading frames [30]"
    max_length: "maximum codon number in open reading frames [32734]"
    max_gaps: "maximum number of codons with gaps or unknown residues before an open reading frame is rejected [2147483647]"
    contig_start_mode: "Contig start can be 0: incomplete, 1: complete, 2: both [2]"
    contig_end_mode: "Contig end can be 0: incomplete, 1: complete, 2: both  [2]"
    orf_start_mode: "Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last encountered start to stop (no start in the middle) [1]"
    forward_frames: "comma-seperated list of ORF frames on the forward strand to be extracted [1,2,3]"
    reverse_frames: "comma-seperated list of ORF frames on the reverse strand to be extracted [1,2,3]"
    translation_table: "1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE, 9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL, 15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL, 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA, 29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]"
    translate: "translate ORF to amino acid [0]"
    use_all_table_starts: "use all alteratives for a start codon in the genetic table, if false - only ATG (AUG)"
    add_orf_stop: "add * at complete start and end"
    sequence_overlap: "overlap between sequences [0]"
    remove_tmp_files: "Delete temporary files"
    threads: "number of cores used for the computation (uses all cores by default) [8]"
    strand: "Strand selection only works for DNA/DNA search 0: reverse, 1: forward, 2: both [1]"
    add_self_matches: "artificially add entries of queries with themselves (for clustering)"
    split_mode: "0: split target db; 1: split query db;  2: auto, depending on main memory [2]"
    diag_score: "Use ungapped diagonal scoring during prefilter [1, set to 0 to disable]"
    exact_km_er_matching: "only exact k-mer matching (range 0-1) [0]"
    min_un_gapped_score: "accept only matches with ungapped alignment score above this threshold [15]"
    local_tmp: "Path where some of the temporary files will be created []"
    disk_space_limit: "Set max disk space to use for reverse profile searches. E.g. 800B, 5K, 10M, 1G. Defaults (0) to all available disk space in the temp folder. [0]"
    add_string_convert: "add backtrace string (convert to alignments with mmseqs convertalis utility)"
    alignment_mode: "How to compute the alignment: 0: automatic; 1: only score and end_pos; 2: also start_pos and cov; 3: also seq.id; 4: only ungapped alignment [2]"
    list_matches_evalue: "list matches below this E-value (range 0.0-inf) [0.001]"
    min_seq_id: "list matches above this sequence identity (for clustering) (range 0.0-1.0) [0.000]"
    min_aln_len: "minimum alignment length (range 0-INT_MAX) [0]"
    seq_id_mode: "0: alignment length 1: shorter, 2: longer sequence [0]"
    alt_ali: "Show up to this many alternative alignments [0]"
    list_matches_fraction: "list matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]"
    cov_mode: "0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs to be at least x% of query length, 4: query seq. length needs to be at least x% of target length 5: short seq. needs to be at least x% of the other seq. length [0]"
    realign: "compute more conservative, shorter alignments (scores and E-values not changed)"
    max_rejected: "maximum rejected alignments before alignment calculation for a query is aborted [2147483647]"
    max_accept: "maximum accepted alignments before alignment calculation for a query is stopped [2147483647]"
    score_bias: "Score bias when computing the SW alignment (in bits) [0.000]"
    gap_open: "Gap open cost [11]"
    gap_extend: "Gap extension cost [1]"
    pc_a: "pseudo count admixture strength [1.000]"
    pcb: "pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]"
    mask_profile: "mask query sequence of profile using tantan [0,1] [1]"
    e_profile: "includes sequences matches with < e-value thr. into the profile (>=0.0) [0.100]"
    wg: "use global sequence weighting for profile calculation"
    filter_msa: "filter msa: 0: do not filter, 1: filter [1]"
    max_seq_id: "reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0] [0.900]"
    qid: "reduce diversity of output MSAs using min.seq. identity with query sequences [0.0,1.0] [0.000]"
    qsc: "reduce diversity of output MSAs using min. score per aligned residue with query sequences [-50.0,100.0] [-20.000]"
    cov: "filter output MSAs using min. fraction of query residues covered by matched sequences [0.0,1.0] [0.000]"
    diff: "filter MSAs by selecting most diverse set of sequences, keeping at least this many seqs in each MSA block of length 50 [1000]"
    num_iterations: "Search iterations [1]"
    slice_search: "For bigger profile DB, run iteratively the search by greedily swapping the search results."
    re_score_mode: "Rescore diagonal with: 0: Hamming distance, 1: local alignment (score only), 2: local alignment, 3: global alignment or 4: longest alignment fullfilling window quality criterion [0]"
    start_sens: "start sensitivity [4.000]"
    sens_steps: "Search steps performed from --start-sense and -s. [1]"
    sub_mat: "amino acid substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    mpi_runner: "Use MPI on compute grid with this MPI command (e.g. \\\"mpirun -np 42\\\") []"
    force_reuse: "reuse tmp file in tmp/latest folder ignoring parameters and git version change"
    filter_hits: "filter hits by seq.id. and coverage"
    sort_results: "Sort results: 0: no sorting, 1: sort by evalue (Alignment) or seq.id. (Hamming) [0]"
    omit_consensus: "Omit consensus sequence in alignment"
    chain_alignments: "Chain overlapping alignments [0]"
    merge_query: "combine ORFs/split sequences to a single entry [1]"
    format_mode: "output format 0: BLAST-TAB, 1: SAM, 2: BLAST-TAB + query/db length [0]"
    format_output: "format output 'query,target,evalue,gapopen,pident,nident,qstart,qend,qlen,tstart,tend,tlen,alnlen,raw,bits,cigar,qseq,tseq,qheader,theader,qaln,taln,qframe,tframe,mismatch,qcov,tcov' [query,target,pident,alnlen,mismatch,gapopen,qstart,qend,tstart,tend,evalue,bits]"
    mm_seqs: ""
    convert_al_is: ""
    created_b: ""
    create_index: ""
    search: ""
  }
  output {
    File out_stdout = stdout()
    File out_seed_sub_mat = "${in_seed_sub_mat}"
    File out_sub_mat = "${in_sub_mat}"
  }
}