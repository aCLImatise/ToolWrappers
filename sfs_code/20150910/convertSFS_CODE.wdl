version 1.0

task ConvertSFSCODE {
  input {
    File? alignment
    Boolean? mk
    Boolean? sfs
    String for_mdot
  }
  command <<<
    convertSFS_CODE \
      ~{for_mdot} \
      ~{if (alignment) then "--alignment" else ""} \
      ~{if (mk) then "--MK" else ""} \
      ~{if (sfs) then "--SFS" else ""}
  >>>
  parameter_meta {
    alignment: "(-a) [A] [F <filename>] [P <#pops> <P1>..<P#pops>]\\n[I <#indiv> <I1>..<I#indiv>] [P.I <#comb> <P1.I1>..<Pn.In>]\\n[L <#loci> <L1>..<L#loci>] [ITS <#its>]\\nPrint the alignment in fasta format.  Use \\\"A\\\" option to print\\nancestral sequences.  Use \\\"F\\\" option\\nto print the output to the file <filename>.  Use \\\"P\\\" option\\nto print only specific populations, or \\\"I\\\" option for\\nspecific individuals.  Use \\\"P.I\\\" option to print only\\nspcific individuals from specific populations, and use \\\"L\\\"\\nto print output from specific loci.  Use \\\"T\\\" option to\\nprint only first <#its> iterations.  Note: cannot use\\nboth \\\"P\\\" and \\\"I\\\" options (use \\\"P.I\\\" instead).  By\\ndefault, a fasta style alignment of all individuals across\\nall loci and iterations will be printed to the screen."
    mk: "(-m) <ingroup> <outgroup> [OBS] [F [a] <file>]\\n[L <#loci> <L1>..<L#loc>] [ITS [#its]] [OGSS <OG_size>\\nExtract McDonald-Kreitman (MK) tables for comparing <ingroup>\\nto <outgroup>.  By default, will print the MK table for the\\ntrue data (saved during simulation) summed over all loci &\\niterations, with each entry space delimited.  Using \\\"OBS\\\"\\noption will print the observed MK table based on parsimony\\n(by default a single sequence from the outgroup will be used\\nfor divergence, but specifying OG_size can change this).\\nUse \\\"F\\\" to print output to the file <file> (include 'a'\\nto append to file instead of over-writing it).  Use \\\"L\\\" to\\nprint specific loci (<#loci> = -1 prints seperate MK tables at\\neach locus).  To print each iteration indepdently, use\\n'ITS' option (to print only a subset of iterations,\\ninclude the number of iterations [#its].  Using the \\\"OGSS\\\"\\noption sets the outgroup size to <OG_size>, such that any\\nmutation carried by the first <OG_size> chromosomes in the\\noutgroup will be considered a fixed difference (setting\\n<OG_size> = -1 is uses the entire sample size).\\nEach MK table is printed in the following order:\\n<PS> <PN> <FS> <FN>, where 'P' refers to polymorphic,\\n'F' fixed, 'S' synonymous and 'N' is nonsynonymous."
    sfs: "(-s) [OBS <P1> <P2> [OG_size]] [T <0/1/2>] [F [a] <file>]\\n[L <#loci> <L1>..<L#loc>] [P <#pops> <P1>..<P#pops>]\\n[ITS [#its]]\\nExtract Site-Frequency Spectra.  By default, will print the\\nSFS for the true data (saved during simulation) summed\\nover all loci & iterations, each entry space delimited and\\npopulations separated by a tab.  Using \\\"OBS\\\" option will\\nprint the observed SFS for population <P1> using <P2> as an\\noutgroup to parsimoniously determine the ancestral state of\\neach SNP (arbitrarily chooses first sequence from outgroup as\\nreference unless OG_size is specified).  Use \\\"T\\\" option to\\nchange the type of SFS extracted:\\n0=synonymous, 1=nonsynonymous, 2=all mutants (default).\\nUse \\\"F\\\" to print output to the file <file> (include 'a'\\nto append to file instead of over-writing it).  Use \\\"L\\\" to\\nprint specific loci (<#loci> = -1 prints seperate SFS for\\neach locus).  Use \\\"P\\\" to print the SFS only from specific\\npopulations (only valid for true data, i.e. not when using\\nOBS flag).  To print each iteration indepdently, use 'ITS'\\nflag (to print only a subset of iterations, include the\\nnumber of iterations [#its].\\n"
    for_mdot: "Examples are the overall site-frequency spectrum, or"
  }
  output {
    File out_stdout = stdout()
    File out_alignment = "${in_alignment}"
  }
}