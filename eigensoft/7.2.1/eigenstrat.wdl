version 1.0

task Eigenstrat {
  input {
    Boolean iI
    Boolean jJ
    Boolean pP
    String oO
    String? mustMust
    String? allAll
    String? beBe
    String? specifiedSpecified
  }
  command <<<
    eigenstrat \
      ~{mustMust} \
      ~{true="-i" false="" iI} \
      ~{true="-j" false="" jJ} \
      ~{true="-p" false="" pP} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{allAll} \
      ~{beBe} \
      ~{specifiedSpecified}
  >>>
}