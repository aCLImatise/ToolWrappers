version 1.0

task TestSra.2.10.7 {
  input {
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String quick
    String check
    String mode
  }
  command <<<
    test-sra.2.10.7 \
      ~{quick} \
      ~{check} \
      ~{mode} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    quick: ""
    check: ""
    mode: ""
  }
}