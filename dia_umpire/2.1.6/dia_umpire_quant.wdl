version 1.0

task DiaUmpireQuant {
  command <<<
    dia_umpire_quant
  >>>
  output {
    File out_stdout = stdout()
  }
}