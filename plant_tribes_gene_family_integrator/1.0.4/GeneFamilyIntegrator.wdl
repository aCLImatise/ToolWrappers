version 1.0

task GeneFamilyIntegrator {
  command <<<
    GeneFamilyIntegrator
  >>>
  output {
    File out_stdout = stdout()
  }
}