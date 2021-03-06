version 1.0

task LorikeetMergespoligotypes {
  input {
    Directory? _input_valueinput
    String? _output_valueoutput
    Boolean? _recursivesearch_input
    File? _pattern_valuefile
    String? jar
    String java
    String merge_sp_oligo_types
  }
  command <<<
    lorikeet merge_spoligotypes \
      ~{java} \
      ~{merge_sp_oligo_types} \
      ~{if defined(_input_valueinput) then ("-i " +  '"' + _input_valueinput + '"') else ""} \
      ~{if defined(_output_valueoutput) then ("-o " +  '"' + _output_valueoutput + '"') else ""} \
      ~{if (_recursivesearch_input) then "-r" else ""} \
      ~{if defined(_pattern_valuefile) then ("-p " +  '"' + _pattern_valuefile + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    _input_valueinput: "| --input <value>\\nInput directory that contains all spoligotype files. You can specify multiple -i arguments"
    _output_valueoutput: "| --output <value>\\nOutput prefix"
    _recursivesearch_input: "| --recursive\\nSearch input directories recursively [Default=true]"
    _pattern_valuefile: "| --pattern <value>\\nFile name pattern for the input files. [Default=\\\".*.spoligotype]\\\"\\n"
    jar: ""
    java: ""
    merge_sp_oligo_types: ""
  }
  output {
    File out_stdout = stdout()
  }
}