version 1.0

task Dfampostlinksh {
  command <<<
    _dfam_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}