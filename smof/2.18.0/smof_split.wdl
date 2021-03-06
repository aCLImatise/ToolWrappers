version 1.0

task SmofSplit {
  input {
    Int? number
    Boolean? seqs
    String? prefix
    String input_fasta_default
  }
  command <<<
    smof split \
      ~{input_fasta_default} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if (seqs) then "--seqs" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    number: "Number of output files or sequences per file"
    seqs: "split by maximum sequences per file"
    prefix: "prefix for output files (default=\\\"xxx\\\")\\n"
    input_fasta_default: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}