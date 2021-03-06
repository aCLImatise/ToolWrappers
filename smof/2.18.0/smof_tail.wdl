version 1.0

task SmofTail {
  input {
    String? entries
    String? first
    String? last
    String input_fasta_default
  }
  command <<<
    smof tail \
      ~{input_fasta_default} \
      ~{if defined(entries) then ("--entries " +  '"' + entries + '"') else ""} \
      ~{if defined(first) then ("--first " +  '"' + first + '"') else ""} \
      ~{if defined(last) then ("--last " +  '"' + last + '"') else ""}
  >>>
  parameter_meta {
    entries: "print last K entries; or use -n +K to output starting\\nwith the Kth"
    first: "print first K letters of each sequence"
    last: "print last K letters of each sequence"
    input_fasta_default: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}