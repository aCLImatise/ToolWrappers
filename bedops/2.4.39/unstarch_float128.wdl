version 1.0

task Unstarchfloat128 {
  input {
    Boolean? elements_max_string_length
    Boolean? has_duplicates
    Boolean? list_json
    Boolean? archive_timestamp
    Boolean? archive_version
    Boolean? signature
    Boolean? elements
    Boolean? bases_uniq
    Boolean? has_duplicate_as_string
    Boolean? has_nested_as_string
    Boolean? list
    Boolean? list_json_no_trailing_new_line
    Boolean? list_chr
    Boolean? list_chromosomes
    Boolean? note
    Boolean? verify_signature
    Boolean? archive_type
    Boolean? is_starch
    String modifiers
  }
  command <<<
    unstarch_float128 \
      ~{modifiers} \
      ~{if (elements_max_string_length) then "--elements-max-string-length" else ""} \
      ~{if (has_duplicates) then "--has-duplicates" else ""} \
      ~{if (list_json) then "--list-json" else ""} \
      ~{if (archive_timestamp) then "--archive-timestamp" else ""} \
      ~{if (archive_version) then "--archive-version" else ""} \
      ~{if (signature) then "--signature" else ""} \
      ~{if (elements) then "--elements" else ""} \
      ~{if (bases_uniq) then "--bases-uniq" else ""} \
      ~{if (has_duplicate_as_string) then "--has-duplicate-as-string" else ""} \
      ~{if (has_nested_as_string) then "--has-nested-as-string" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (list_json_no_trailing_new_line) then "--list-json-no-trailing-newline" else ""} \
      ~{if (list_chr) then "--list-chr" else ""} \
      ~{if (list_chromosomes) then "--list-chromosomes" else ""} \
      ~{if (note) then "--note" else ""} \
      ~{if (verify_signature) then "--verify-signature" else ""} \
      ~{if (archive_type) then "--archive-type" else ""} \
      ~{if (is_starch) then "--is-starch" else ""}
  >>>
  parameter_meta {
    elements_max_string_length: "| --bases-uniq |"
    has_duplicates: "| --has-nested | --list |"
    list_json: "| --list-chromosomes |"
    archive_timestamp: "| --note |"
    archive_version: "| --is-starch |"
    signature: "| --verify-signature ]"
    elements: "Show total element count for archive. If\\n<chromosome> is specified, the result\\nshows the element count for the\\nchromosome."
    bases_uniq: "Show total and unique base counts,\\nrespectively, for archive. If\\n<chromosome> is specified, the count is\\nspecific to the chromosome, if available."
    has_duplicate_as_string: "Show whether there is one or more\\nduplicate elements in the specified\\nchromosome, either as a numerical (1/0)\\nor string (true/false) value. If no\\n<chromosome> is specified, the value\\ngiven indicates if there is one or more\\nduplicate elements across all chromosome\\nrecords."
    has_nested_as_string: "Show whether there is one ore more nested\\nelements in the specified chromosome,\\neither as a numerical (1/0) or string\\n(true/false) value. If no <chromosome> is\\nspecified, the value given indicates if\\nthere is one or more nested elements\\nacross all chromosome records."
    list: "List archive metadata (output is in text\\nformat). If chromosome is specified, the\\nattributes of the given chromosome are\\nshown."
    list_json_no_trailing_new_line: "List archive metadata (output is in JSON\\nformat)"
    list_chr: ","
    list_chromosomes: "List all or specified chromosome in\\nstarch archive (like \\\"bedextract --list-\\nchr\\\"). If <chromosome> is specified but\\nis not in the output list, nothing is\\nreturned."
    note: "Show descriptive note, if available."
    verify_signature: "Verify data integrity of specified\\n<chromosome>, or the integrity of all\\navailable chromosomes, if the\\n<chromosome> is unspecified."
    archive_type: "Show archive compression type."
    is_starch: "Test if <starch-file> is a valid archive\\nand print 0/1 (false/true) to standard\\noutput. Unstarch will also return a non-\\nzero error code if the input file is not\\na valid archive."
    modifiers: "--------------------------------------------------------------------------"
  }
  output {
    File out_stdout = stdout()
  }
}