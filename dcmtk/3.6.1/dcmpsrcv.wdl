version 1.0

task Dcmpsrcv {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? log_level
    Boolean? log_config
    Boolean? _terminate_terminate
    File config_file
    String receiver_id
  }
  command <<<
    dcmpsrcv \
      ~{config_file} \
      ~{receiver_id} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (_terminate_terminate) then "-t" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet       quiet mode, print no warnings and errors"
    _verbose_details: "--verbose     verbose mode, print processing details"
    _debug_information: "--debug       debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    _terminate_terminate: "--terminate   terminate all running receivers"
    config_file: "configuration file to be read"
    receiver_id: "identifier of receiver in config file"
  }
  output {
    File out_stdout = stdout()
  }
}