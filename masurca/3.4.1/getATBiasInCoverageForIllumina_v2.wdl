version 1.0

task GetATBiasInCoverageForIlluminaV2 {
  command <<<
    getATBiasInCoverageForIllumina_v2
  >>>
  output {
    File out_stdout = stdout()
  }
}