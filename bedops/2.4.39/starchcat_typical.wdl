version 1.0

task StarchcatTypical {
  input {
    Boolean noteNote
    Boolean bzip2Bzip2
    Boolean omitOmitSignature
    String reportReportProgress
  }
  command <<<
    starchcat-typical \
      ~{true="--note" false="" noteNote} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{true="--omit-signature" false="" omitOmitSignature} \
      ~{if defined(reportReportProgress) then ("--report-progress " +  '"' + reportReportProgress + '"') else ""}
  >>>
}