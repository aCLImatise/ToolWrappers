version 1.0

task BedtoolsSplit {
  input {
    Boolean? file_bed_input
    Boolean? number
    File? prefix
    Boolean? algorithm
  }
  command <<<
    bedtools split \
      ~{if (file_bed_input) then "--input" else ""} \
      ~{if (number) then "--number" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (algorithm) then "--algorithm" else ""}
  >>>
  parameter_meta {
    file_bed_input: "(file)       BED input file (req'd)."
    number: "(int)       Number of files to create (req'd)."
    prefix: "(string)    Output BED file prefix."
    algorithm: "(string) Algorithm used to split data.\\n* size (default): uses a heuristic algorithm to group the items\\nso all files contain the ~ same number of bases\\n* simple : route records such that each split file has\\napproximately equal records (like Unix split)."
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}