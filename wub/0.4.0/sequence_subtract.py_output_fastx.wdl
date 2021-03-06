version 1.0

task SequenceSubtractpyOutputFastx {
  input {
    String? o
    String? i
    String sequence_subtract_do_tpy
  }
  command <<<
    sequence_subtract_py output_fastx \
      ~{sequence_subtract_do_tpy} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    i: ""
    sequence_subtract_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}