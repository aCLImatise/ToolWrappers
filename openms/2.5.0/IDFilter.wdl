version 1.0

task IDFilter {
  input {
    File inIn
    File outOut
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean precursorPrecursor
    Boolean scoreScore
    Boolean scoreScore
    Boolean whitelistWhitelist
    Boolean whitelistWhitelist
    Boolean whitelistWhitelist
    Boolean blacklistBlacklist
    Boolean blacklistBlacklist
    Boolean blacklistBlacklist
    Boolean inInSilicoDigestion
    Boolean missedMissedCleavages
    Boolean bestBest
    Boolean bestBest
    Boolean bestBest
    Boolean varVarMods
    Boolean removeRemoveSharedPeptides
    Boolean keepKeepUnreferencedProteinHits
    Boolean removeRemoveDecoys
    Boolean deleteDeleteUnreferencedPeptideHits
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    IDFilter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-precursor" false="" precursorPrecursor} \
      ~{true="-score" false="" scoreScore} \
      ~{true="-score" false="" scoreScore} \
      ~{true="-whitelist" false="" whitelistWhitelist} \
      ~{true="-whitelist" false="" whitelistWhitelist} \
      ~{true="-whitelist" false="" whitelistWhitelist} \
      ~{true="-blacklist" false="" blacklistBlacklist} \
      ~{true="-blacklist" false="" blacklistBlacklist} \
      ~{true="-blacklist" false="" blacklistBlacklist} \
      ~{true="-in_silico_digestion" false="" inInSilicoDigestion} \
      ~{true="-missed_cleavages" false="" missedMissedCleavages} \
      ~{true="-best" false="" bestBest} \
      ~{true="-best" false="" bestBest} \
      ~{true="-best" false="" bestBest} \
      ~{true="-var_mods" false="" varVarMods} \
      ~{true="-remove_shared_peptides" false="" removeRemoveSharedPeptides} \
      ~{true="-keep_unreferenced_protein_hits" false="" keepKeepUnreferencedProteinHits} \
      ~{true="-remove_decoys" false="" removeRemoveDecoys} \
      ~{true="-delete_unreferenced_peptide_hits" false="" deleteDeleteUnreferencedPeptideHits} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}