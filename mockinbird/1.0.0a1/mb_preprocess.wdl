version 1.0

task MbPreprocess {
  input {
    String logLogLevel
    String? parParClipFastQ
    String? outputOutputDir
    String? prefixPrefix
    String? configConfigFile
  }
  command <<<
    mb-preprocess \
      ~{parParClipFastQ} \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""} \
      ~{outputOutputDir} \
      ~{prefixPrefix} \
      ~{configConfigFile}
  >>>
}