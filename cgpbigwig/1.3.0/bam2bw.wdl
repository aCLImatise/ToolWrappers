version 1.0

task Bam2bw {
  input {
    String? i
    String? o
    String? b_vertical_line_cr
    String am
  }
  command <<<
    bam2bw \
      ~{b_vertical_line_cr} \
      ~{am} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    b_vertical_line_cr: ""
    am: ""
  }
}