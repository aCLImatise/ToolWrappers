version 1.0

task DshSplitFasta {
  input {
    Boolean aboutAbout
    Boolean inputInputFile
    Boolean bytesBytes
    Boolean recordsRecords
    Boolean prefixPrefix
    Boolean leftLeftPad
    Boolean suffixSuffix
    Boolean lineLineWidth
  }
  command <<<
    dsh-split-fasta \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--input-file" false="" inputInputFile} \
      ~{true="--bytes" false="" bytesBytes} \
      ~{true="--records" false="" recordsRecords} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--left-pad" false="" leftLeftPad} \
      ~{true="--suffix" false="" suffixSuffix} \
      ~{true="--line-width" false="" lineLineWidth}
  >>>
}