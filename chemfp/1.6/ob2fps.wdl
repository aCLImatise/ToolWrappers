version 1.0

task Ob2fps {
  input {
    Boolean? fp_two
    Boolean? fp_three
    Boolean? fp_four
    Boolean? sub_struct
    Boolean? rdma_ccs_slash_two
    Boolean? rdma_ccs_slash_one
    String? id_tag
    File? in
    File? save_fingerprints_filename
    File? out
    String? errors
    String filenames
    String smarts_inte_ligand_dot_txt
  }
  command <<<
    ob2fps \
      ~{filenames} \
      ~{smarts_inte_ligand_dot_txt} \
      ~{if (fp_two) then "--FP2" else ""} \
      ~{if (fp_three) then "--FP3" else ""} \
      ~{if (fp_four) then "--FP4" else ""} \
      ~{if (sub_struct) then "--substruct" else ""} \
      ~{if (rdma_ccs_slash_two) then "--rdmaccs/2" else ""} \
      ~{if (rdma_ccs_slash_one) then "--rdmaccs/1" else ""} \
      ~{if defined(id_tag) then ("--id-tag " +  '"' + id_tag + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(save_fingerprints_filename) then ("--output " +  '"' + save_fingerprints_filename + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""}
  >>>
  parameter_meta {
    fp_two: "linear fragments up to 7 atoms"
    fp_three: "SMARTS patterns specified in the file patterns.txt"
    fp_four: "SMARTS patterns specified in the file"
    sub_struct: "generate ChemFP substructure fingerprints"
    rdma_ccs_slash_two: "166 bit RDKit/MACCS fingerprints (version 2)"
    rdma_ccs_slash_one: "use the version 1 definition for --rdmaccs"
    id_tag: "tag name containing the record id (SD files only)"
    in: "input structure format (default autodetects from the\\nfilename extension)"
    save_fingerprints_filename: "save the fingerprints to FILENAME (default=stdout)"
    out: "output structure format (default guesses from output\\nfilename, or is 'fps')"
    errors: "how should structure parse errors be handled?\\n(default=ignore)"
    filenames: "input structure files (default is stdin)"
    smarts_inte_ligand_dot_txt: "--MACCS               Open Babel's implementation of the MACCS 166 keys"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}