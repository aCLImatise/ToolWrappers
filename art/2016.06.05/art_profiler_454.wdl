version 1.0

task ArtProfiler454 {
  command <<<
    art_profiler_454
  >>>
  output {
    File out_stdout = stdout()
  }
}