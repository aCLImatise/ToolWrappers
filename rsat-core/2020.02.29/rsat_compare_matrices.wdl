version 1.0

task RsatComparematrices {
  input {
    Boolean? format_two
    Boolean? format_one
    String compare_matrices
    String sequences
    String pssm
    String column_dot
    String graphviz_dot
    String wr_w_wwr
    String respectively_dot
    String note
    String convert_background_model_dot
    Int file_two_dot
    String pair_dot
    String matching_profiles_convenient
    String example
    String symmetry_dot
    String mode_dot
    String graph_exported_yet
    String matches_dot
  }
  command <<<
    rsat compare_matrices \
      ~{compare_matrices} \
      ~{sequences} \
      ~{pssm} \
      ~{column_dot} \
      ~{graphviz_dot} \
      ~{wr_w_wwr} \
      ~{respectively_dot} \
      ~{note} \
      ~{convert_background_model_dot} \
      ~{file_two_dot} \
      ~{pair_dot} \
      ~{matching_profiles_convenient} \
      ~{example} \
      ~{symmetry_dot} \
      ~{mode_dot} \
      ~{graph_exported_yet} \
      ~{matches_dot} \
      ~{if (format_two) then "-format2" else ""} \
      ~{if (format_one) then "-format1" else ""}
  >>>
  parameter_meta {
    format_two: ")."
    format_one: ")."
    compare_matrices: "[1mVERSION[0m"
    sequences: "pattern matching"
    pssm: "[1mUSAGE[0m"
    column_dot: "[prefix].gml"
    graphviz_dot: "[prefix_alignments_pairwise.tab]"
    wr_w_wwr: "wr1 = w / w1\\nwr2 = w / w2"
    respectively_dot: "[1mSum of Squared Distances (SSD)[0m"
    note: "An alternative would be to use as normalizing factor the length of the\\nalignment (w) relative to the length of the shorter motif.\\nNcor = cor * w / min(w1,w2)\\nThis however tends to favour matches between very short motifs (4-5\\nresidues) which cover only a fraction of the query motif."
    convert_background_model_dot: "[1m-top1 X[0m"
    file_two_dot: "This is the typical use of [33mcompare-matrices[0m: comparing one or"
    pair_dot: "This mode is used by [33mcluster-matrices[0m in order to obtain a table"
    matching_profiles_convenient: "Matching profiles are convenient for drawing the similarity"
    example: "Comparing motifs in a strand-insensitive way (-strand DR)\\nDNA-binding motifs are usually strand-insensitive. A motif may\\nbe detected in one given orientation by a motif-discovery\\nalgorithm, but annotated in the reverse complementary\\norientation in a motif database. For DNA binding motifs, we thus\\nrecomment the DR option.\\nOn the contrary, RNA-related signals (termination,\\npoly-adenylation, miRNA) are strand-sensitive, and should be\\ncompared in a single orientation (-strand D)."
    symmetry_dot: "DNA signals can either be symmetrical (reverse complementary"
    mode_dot: "[33mmatch_rank[0m"
    graph_exported_yet: "The graph is exported in GML (open with CytoScape or yet) and"
    matches_dot: "z-score = (score - mean(score) ) / sd(score)"
  }
  output {
    File out_stdout = stdout()
  }
}