version 1.0

task CgpAppendIdsToVcfpl {
  input {
    Boolean? file
    File? outfile
    Boolean? id_start
    String? o
    String? i
  }
  command <<<
    cgpAppendIdsToVcf_pl \
      ~{if (file) then "--file" else ""} \
      ~{if (outfile) then "--outFile" else ""} \
      ~{if (id_start) then "--idstart" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    file: "(-i)       The file to append IDs to."
    outfile: "(-o)       The output filename"
    id_start: "(-g)       Will set a sequential id generator to the given integer value. If not present will assign UUIDs to each variant."
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}