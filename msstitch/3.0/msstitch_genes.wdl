version 1.0

task MsstitchGenes {
  input {
    String? input_file_format
    String? directory_to_output
    String? output_file
    String? decoy_fn
    String? score_col_pattern
    Boolean? log_score
    String? is_ob_quant_col_pattern
    Int? min_int
    Array[String] denom_cols
    Array[String] denom_patterns
    Boolean? ms_one_quant
    String? psm_table
    String? fast_a_delim
    String? gene_field
    String? target_fast_a
    String? decoy_fast_a
  }
  command <<<
    msstitch genes \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(decoy_fn) then ("--decoyfn " +  '"' + decoy_fn + '"') else ""} \
      ~{if defined(score_col_pattern) then ("--scorecolpattern " +  '"' + score_col_pattern + '"') else ""} \
      ~{true="--logscore" false="" log_score} \
      ~{if defined(is_ob_quant_col_pattern) then ("--isobquantcolpattern " +  '"' + is_ob_quant_col_pattern + '"') else ""} \
      ~{if defined(min_int) then ("--minint " +  '"' + min_int + '"') else ""} \
      ~{if defined(denom_cols) then ("--denomcols " +  '"' + denom_cols + '"') else ""} \
      ~{if defined(denom_patterns) then ("--denompatterns " +  '"' + denom_patterns + '"') else ""} \
      ~{true="--ms1quant" false="" ms_one_quant} \
      ~{if defined(psm_table) then ("--psmtable " +  '"' + psm_table + '"') else ""} \
      ~{if defined(fast_a_delim) then ("--fastadelim " +  '"' + fast_a_delim + '"') else ""} \
      ~{if defined(gene_field) then ("--genefield " +  '"' + gene_field + '"') else ""} \
      ~{if defined(target_fast_a) then ("--targetfasta " +  '"' + target_fast_a + '"') else ""} \
      ~{if defined(decoy_fast_a) then ("--decoyfasta " +  '"' + decoy_fast_a + '"') else ""}
  >>>
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    decoy_fn: "Decoy peptide table input file"
    score_col_pattern: "Regular expression pattern to find column where score to use (e.g. percolator svm-score) is written."
    log_score: "Score, e.g. q-values will be converted to -log10 values."
    is_ob_quant_col_pattern: "Unique text pattern to identify isobaric quant columns in input table."
    min_int: "Intensity threshold of PSMs when calculating isobaric ratios. Values below threshold will be set to NA."
    denom_cols: "Column numbers of denominator channels when creating a summarized feature table with isobaric ratios from PSMs"
    denom_patterns: "Regex patterns to detect denominator channels in a PSM table, when creating a table with summarized feature isobaric ratios. If both --denompatterns and --denomcol are given then column numbers are used. Usage e.g. --denompattern _126 _131. Also possible: --denompattern _12[6-7] to detect multiple columns."
    ms_one_quant: "Specifies to add precursor quant data from lookup DB to output table"
    psm_table: "PSM table file containing isobaric quant data to add to table."
    fast_a_delim: "Delimiter in FASTA header, used to parse gene names in case of non-ENSEMBL/Uniprot"
    gene_field: "Field nr (first=1) in FASTA that contains gene name when using --fastadelim to parse the gene names"
    target_fast_a: "FASTA file with target proteins to determine best scoring proteins of target/decoy pairs for picked FDR. In case using --picktype ensg/genename"
    decoy_fast_a: "FASTA file with decoy proteins to determine best scoring proteins of target/decoy pairs for picked FDR. In case using --picktype ensg/genename"
  }
}