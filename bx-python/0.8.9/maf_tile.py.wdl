version 1.0

task MafTilepy {
  command <<<
    maf_tile_py
  >>>
  output {
    File out_stdout = stdout()
  }
}