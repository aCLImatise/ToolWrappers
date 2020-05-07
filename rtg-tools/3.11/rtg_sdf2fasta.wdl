version 1.0

task RtgSdf2fasta {
  input {
    String inputInput
    File outputOutput
    Boolean interleaveInterleave
    Int lineLineLength
    Boolean noNoGzip
  }
  command <<<
    rtg sdf2fasta \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--interleave" false="" interleaveInterleave} \
      ~{if defined(lineLineLength) then ("--line-length " +  '"' + lineLineLength + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip}
  >>>
}