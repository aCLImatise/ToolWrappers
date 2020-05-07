version 1.0

task BedparsePromoterBedfile {
  input {
    String upUp
    String downDown
    Boolean unUnStranded
  }
  command <<<
    bedparse promoter bedfile \
      ~{if defined(upUp) then ("--up " +  '"' + upUp + '"') else ""} \
      ~{if defined(downDown) then ("--down " +  '"' + downDown + '"') else ""} \
      ~{true="--unstranded" false="" unUnStranded}
  >>>
}