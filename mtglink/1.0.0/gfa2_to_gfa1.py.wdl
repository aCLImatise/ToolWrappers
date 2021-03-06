version 1.0

task Gfa2ToGfa1py {
  input {
    File? in
    File? out
    Float gfa_dot_two_to_gfa_do_tone_do_tpy
  }
  command <<<
    gfa2_to_gfa1_py \
      ~{gfa_dot_two_to_gfa_do_tone_do_tpy} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    in: "GFA 2.0 file (format: 'xxx.gfa')"
    out: "Output directory for saving the GFA 1.0 file"
    gfa_dot_two_to_gfa_do_tone_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}