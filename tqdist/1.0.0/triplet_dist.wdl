version 1.0

task TripletDist {
  input {
    Boolean? v
    Int filename_one
    Int filename_two
  }
  command <<<
    triplet_dist \
      ~{filename_one} \
      ~{filename_two} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
    filename_one: ""
    filename_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}