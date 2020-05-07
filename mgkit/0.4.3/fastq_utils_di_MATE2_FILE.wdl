version 1.0

task FastqUtilsDiMATE2FILE {
  input {
    String? optionsOptions
    String? fastFastQFile
    String? mate1Mate1File
    String? mate2Mate2File
  }
  command <<<
    fastq-utils di MATE2_FILE \
      ~{optionsOptions} \
      ~{fastFastQFile} \
      ~{mate1Mate1File} \
      ~{mate2Mate2File}
  >>>
}