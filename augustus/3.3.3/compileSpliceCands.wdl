version 1.0

task CompileSpliceCands {
  input {
    Boolean? filename_potential_splice
    Boolean? filename_genome_file
    Boolean? integer_defines_number
    Boolean? float_defines_differ
    Boolean? integer_defines_checked
    Boolean? argument_enables_debugging
    Boolean? integer_maximum_length
  }
  command <<<
    compileSpliceCands \
      ~{if (filename_potential_splice) then "-f" else ""} \
      ~{if (filename_genome_file) then "-g" else ""} \
      ~{if (integer_defines_number) then "-c" else ""} \
      ~{if (float_defines_differ) then "-t" else ""} \
      ~{if (integer_defines_checked) then "-m" else ""} \
      ~{if (argument_enables_debugging) then "-d" else ""} \
      ~{if (integer_maximum_length) then "-i" else ""}
  >>>
  parameter_meta {
    filename_potential_splice: "<filename>      The potential splice sites in gff format"
    filename_genome_file: "<filename>      The genome file in fasta format)"
    integer_defines_number: "<integer>       Defines the number of potential splice site every potential splice site itself is compared with"
    float_defines_differ: "<float>         has to be between 0 and 1 and  defines how much the average coverage may differ"
    integer_defines_checked: "<integer>       defines how many bases arround the splice site should be checked."
    argument_enables_debugging: "<no argument>   enables debugging output"
    integer_maximum_length: "<integer>       The maximum length an Intron can be. Default 500000(human genome)."
  }
  output {
    File out_stdout = stdout()
  }
}