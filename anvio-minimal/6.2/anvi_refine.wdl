version 1.0

task Anvirefine {
  input {
    String? profile_db
    String? contigs_db
    String? collection_name
    String? bin_id
    File? bin_ids_file
    String? find_from_split_name
    String? tree
    Boolean? skip_hierarchical_clustering
    Boolean? load_full_state
    File? additional_view
    File? additional_layers
    String? taxonomic_level
    Boolean? hide_outlier_sn_vs
    File? title
    File? export_svg
    Boolean? dry_run
    Boolean? skip_in_it_functions
    Boolean? skip_auto_ordering
    Float? ip_address
    Int? port_number
    File? browser_path
    Boolean? read_only
    Boolean? server_only
    Boolean? password_protected
    String interface_dot
  }
  command <<<
    anvi_refine \
      ~{interface_dot} \
      ~{if defined(profile_db) then ("--profile-db " +  '"' + profile_db + '"') else ""} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(bin_id) then ("--bin-id " +  '"' + bin_id + '"') else ""} \
      ~{if defined(bin_ids_file) then ("--bin-ids-file " +  '"' + bin_ids_file + '"') else ""} \
      ~{if defined(find_from_split_name) then ("--find-from-split-name " +  '"' + find_from_split_name + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if (skip_hierarchical_clustering) then "--skip-hierarchical-clustering" else ""} \
      ~{if (load_full_state) then "--load-full-state" else ""} \
      ~{if defined(additional_view) then ("--additional-view " +  '"' + additional_view + '"') else ""} \
      ~{if defined(additional_layers) then ("--additional-layers " +  '"' + additional_layers + '"') else ""} \
      ~{if defined(taxonomic_level) then ("--taxonomic-level " +  '"' + taxonomic_level + '"') else ""} \
      ~{if (hide_outlier_sn_vs) then "--hide-outlier-SNVs" else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(export_svg) then ("--export-svg " +  '"' + export_svg + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (skip_in_it_functions) then "--skip-init-functions" else ""} \
      ~{if (skip_auto_ordering) then "--skip-auto-ordering" else ""} \
      ~{if defined(ip_address) then ("--ip-address " +  '"' + ip_address + '"') else ""} \
      ~{if defined(port_number) then ("--port-number " +  '"' + port_number + '"') else ""} \
      ~{if defined(browser_path) then ("--browser-path " +  '"' + browser_path + '"') else ""} \
      ~{if (read_only) then "--read-only" else ""} \
      ~{if (server_only) then "--server-only" else ""} \
      ~{if (password_protected) then "--password-protected" else ""}
  >>>
  parameter_meta {
    profile_db: "Anvi'o profile database"
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen-\\ncontigs'"
    collection_name: "Collection name."
    bin_id: "Bin name you are interested in."
    bin_ids_file: "Text file for bins (each line should be a unique bin\\nid)."
    find_from_split_name: "If you don't know the bin name you want to work with\\nbut if you know the split name it contains you can use\\nthis parameter to tell anvi'o the split name, and so\\nit can find the bin for you automatically. This is\\nsomething extremely difficult for anvi'o to do, but it\\ndoes it anyway because you."
    tree: "NEWICK formatted tree structure"
    skip_hierarchical_clustering: "Skip hierarchical clustering for the splits in the\\nrefined bin, if you skip clustering you need to\\nprovide your own newick formatted tree using --tree\\nparameter."
    load_full_state: "Often the minimum and maximum values defined for the\\nan entire profile database that contains all contigs\\ndo not scale well when you wish to work with a single\\nbin in the refine mode. For this reason, the default\\nbehavior of anvi-refine is to ignore min/max values\\nset in the default state. This flag is your way of\\ntelling anvi'o to not do that, and load the state\\nstored in the profile database as is."
    additional_view: "A TAB-delimited file for an additional view to be used\\nin the interface. This file should contain all split\\nnames, and values for each of them in all samples.\\nEach column in this file must correspond to a sample\\nname. Content of this file will be called 'user_view',\\nwhich will be available as a new item in the 'views'\\ncombo box in the interface"
    additional_layers: "A TAB-delimited file for additional layers for splits.\\nThe first column of this file must be split names, and\\nthe remaining columns should be unique attributes. The\\nfile does not need to contain all split names, or\\nvalues for each split in every column. Anvi'o will try\\nto deal with missing data nicely. Each column in this\\nfile will be visualized as a new layer in the tree."
    taxonomic_level: "The taxonomic level to use whenever relevant and/or\\navailable. The default taxonomic level is t_genus, but\\nif you choose something specific, anvi'o will focus on\\nthat whenever possible."
    hide_outlier_sn_vs: "During profiling, anvi'o marks positions of single-\\nnucleotide variations (SNVs) that originate from\\nplaces in contigs where coverage values are a bit\\n'sketchy'. If you would like to avoid SNVs in those\\npositions of splits in applicable projects you can use\\nthis flag, and the interface would hide SNVs that are\\nmarked as 'outlier' (although it is clearly the best\\nto see everything, no one will judge you if you end up\\nusing this flag) (plus, there may or may not be some\\nhistorical data on this here:\\nhttps://github.com/meren/anvio/issues/309)."
    title: "Title for the interface. If you are working with a\\nRUNINFO dict, the title will be determined based on\\ninformation stored in that file. Regardless, you can\\noverride that value using this parameter."
    export_svg: "The SVG output file path."
    dry_run: "Don't do anything real. Test everything, and stop\\nright before wherever the developer said 'well, this\\nis enough testing', and decided to print out results."
    skip_in_it_functions: "When declared, function calls for genes will not be\\ninitialized (therefore will be missing from all\\nrelevant interfaces or output files). The use of this\\nflag may reduce the memory fingerprint and processing\\ntime for large datasets."
    skip_auto_ordering: "When declared, the attempt to include automatically\\ngenerated orders of items based on additional data is\\nskipped. In case those buggers cause issues with your\\ndata, and you still want to see your stuff and deal\\nwith the other issue maybe later."
    ip_address: "IP address for the HTTP server. The default ip address\\n(0.0.0.0) should work just fine for most."
    port_number: "Port number to use for anvi'o services. If nothing is\\ndeclared, anvi'o will try to find a suitable port\\nnumber, starting from the default port number, 8080."
    browser_path: "By default, anvi'o will use your default browser to\\nlaunch the interactive interface. If you would like to\\nuse something else than your system default, you can\\nprovide a full path for an alternative browser using\\nthis parameter, and hope for the best. For instance we\\nare using this parameter to call Google's experimental\\nbrowser, Canary, which performs better with demanding\\nvisualizations."
    read_only: "When the interactive interface is started with this\\nflag, all 'database write' operations will be\\ndisabled."
    server_only: "The default behavior is to start the local server, and\\nfire up a browser that connects to the server. If you\\nhave other plans, and want to start the server without\\ncalling the browser, this is the flag you need."
    password_protected: "If this flag is set, command line tool will ask you to\\nenter a password and interactive interface will be\\nonly accessible after entering same password. This\\noption is recommended for shared machines like\\nclusters or shared networks where computers are not\\nisolated.\\n"
    interface_dot: "--split-hmm-layers    When declared, this flag tells the interface to split\\nevery gene found in HMM searches that were performed\\nagainst non-singlecopy gene HMM profiles into their\\nown layer. Please see the documentation for details."
  }
  output {
    File out_stdout = stdout()
    File out_export_svg = "${in_export_svg}"
  }
}