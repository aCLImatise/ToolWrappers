version 1.0

task TabutilsMerge {
  input {
    Boolean? header_comment
    Boolean? noheader
    Boolean? no_missing
    Boolean? collate
    Int? key_cols
    Boolean? key_desc
    Int one_four
  }
  command <<<
    tabutils merge \
      ~{one_four} \
      ~{if (header_comment) then "-headercomment" else ""} \
      ~{if (noheader) then "-noheader" else ""} \
      ~{if (no_missing) then "-nomissing" else ""} \
      ~{if (collate) then "-collate" else ""} \
      ~{if defined(key_cols) then ("-keycols " +  '"' + key_cols + '"') else ""} \
      ~{if (key_desc) then "-keydesc" else ""}
  >>>
  parameter_meta {
    header_comment: "the header is last commented line ('#')"
    noheader: "the files have no header row"
    no_missing: "discard rows with missing values"
    collate: "order uncommon values by file first, not column"
    key_cols: ",col   if there are missing values, use these columns to\\ndetermine which file has missing data.  If the col ends\\nin 'n', this is taken to be a number.\\n(defaults to common cols, in order)"
    key_desc: "keys are sorted descending order\\n(defaults to ascending)"
    one_four: "1-4,5"
  }
  output {
    File out_stdout = stdout()
  }
}