version 1.0

task MapGffIds {
  command <<<
    map_gff_ids
  >>>
  output {
    File out_stdout = stdout()
  }
}