version 1.0

task BactopiaTools.py {
  input {
    String bacBacTopia
    String? strStr
    String? fastFastAni
    String? gtGtDb
    String? phyloPhyloFlash
    String? roarRoarY
    String? summarySummary
  }
  command <<<
    bactopia-tools.py \
      ~{strStr} \
      ~{fastFastAni} \
      ~{if defined(bacBacTopia) then ("--bactopia " +  '"' + bacBacTopia + '"') else ""} \
      ~{gtGtDb} \
      ~{phyloPhyloFlash} \
      ~{roarRoarY} \
      ~{summarySummary}
  >>>
}