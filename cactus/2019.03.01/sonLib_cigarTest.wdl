version 1.0

task SonLibCigarTest {
  command <<<
    sonLib_cigarTest
  >>>
  output {
    File out_stdout = stdout()
  }
}