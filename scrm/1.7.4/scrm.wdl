version 1.0

task Scrm {
  input {
    Int? l_set_rate
    String? sr
    Int? set_window_length
    Int? use_island_model
    Int? ei
    Int? assume_symmetric_rate
    Int? m_change_rate
    String? j_m_set
    String? i_m_set
    Int? ma
    Int? ema
    Int? es
    Int? eps
    String? ej
    Int? n_set_present_day_size_i
    Int? i_change_size
    Int? n_set_present_day_size_populations
    String? set_exponential_growth_rate_i
    String? i_change_exponential
    String? set_exponential_growth_rate_populations
    String? change_exponential_rate
    Int? set_mutation_rate
    Boolean? print_genealogies_newick
    Boolean? print_genealogies_oriented
    Boolean? print_tmrca_length
    Boolean? os_fs
    Boolean? sc
    File? in_it
    Int? seed
    Int? specify_number_significant
    Boolean? print_model
  }
  command <<<
    scrm \
      ~{if defined(l_set_rate) then ("-r " +  '"' + l_set_rate + '"') else ""} \
      ~{if defined(sr) then ("-sr " +  '"' + sr + '"') else ""} \
      ~{if defined(set_window_length) then ("-l " +  '"' + set_window_length + '"') else ""} \
      ~{if defined(use_island_model) then ("-I " +  '"' + use_island_model + '"') else ""} \
      ~{if defined(ei) then ("-eI " +  '"' + ei + '"') else ""} \
      ~{if defined(assume_symmetric_rate) then ("-M " +  '"' + assume_symmetric_rate + '"') else ""} \
      ~{if defined(m_change_rate) then ("-eM " +  '"' + m_change_rate + '"') else ""} \
      ~{if defined(j_m_set) then ("-m " +  '"' + j_m_set + '"') else ""} \
      ~{if defined(i_m_set) then ("-em " +  '"' + i_m_set + '"') else ""} \
      ~{if defined(ma) then ("-ma " +  '"' + ma + '"') else ""} \
      ~{if defined(ema) then ("-ema " +  '"' + ema + '"') else ""} \
      ~{if defined(es) then ("-es " +  '"' + es + '"') else ""} \
      ~{if defined(eps) then ("-eps " +  '"' + eps + '"') else ""} \
      ~{if defined(ej) then ("-ej " +  '"' + ej + '"') else ""} \
      ~{if defined(n_set_present_day_size_i) then ("-n " +  '"' + n_set_present_day_size_i + '"') else ""} \
      ~{if defined(i_change_size) then ("-en " +  '"' + i_change_size + '"') else ""} \
      ~{if defined(n_set_present_day_size_populations) then ("-eN " +  '"' + n_set_present_day_size_populations + '"') else ""} \
      ~{if defined(set_exponential_growth_rate_i) then ("-g " +  '"' + set_exponential_growth_rate_i + '"') else ""} \
      ~{if defined(i_change_exponential) then ("-eg " +  '"' + i_change_exponential + '"') else ""} \
      ~{if defined(set_exponential_growth_rate_populations) then ("-G " +  '"' + set_exponential_growth_rate_populations + '"') else ""} \
      ~{if defined(change_exponential_rate) then ("-eG " +  '"' + change_exponential_rate + '"') else ""} \
      ~{if defined(set_mutation_rate) then ("-t " +  '"' + set_mutation_rate + '"') else ""} \
      ~{if (print_genealogies_newick) then "-T" else ""} \
      ~{if (print_genealogies_oriented) then "-O" else ""} \
      ~{if (print_tmrca_length) then "-L" else ""} \
      ~{if (os_fs) then "-oSFS" else ""} \
      ~{if (sc) then "-SC" else ""} \
      ~{if defined(in_it) then ("-init " +  '"' + in_it + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if defined(specify_number_significant) then ("-p " +  '"' + specify_number_significant + '"') else ""} \
      ~{if (print_model) then "-print-model" else ""}
  >>>
  parameter_meta {
    l_set_rate: "<L>       Set recombination rate to R and locus length to L."
    sr: "<R>      Change the recombination rate R at sequence position p."
    set_window_length: "Set the approximation window length to l."
    use_island_model: "<s1> ... <sn> [<M>]   Use an island model with npop populations,\\nwhere s1 to sn individuals are sampled each population.\\nOptionally assume a symmetric migration rate of M."
    ei: "<s1> ... <sn> [<M>]     Sample s1 to sn indiviuals from their\\ncorresponding populations at time t."
    assume_symmetric_rate: "Assume a symmetric migration rate of M/(npop-1)."
    m_change_rate: "<M>      Change the symmetric migration rate to M/(npop-1) at time t."
    j_m_set: "<j> <M>   Set the migration rate from population j to population i to M"
    i_m_set: "<i> <j> <M>   Set the migration rate from population j to\\npopulation i to M at time t."
    ma: "<M21> ...   Sets the (backwards) migration matrix."
    ema: "<M11> <M21> ...    Changes the migration matrix at time t"
    es: "<i> <p>  Population admixture. Replaces a fraction of 1-p of\\npopulation i with individuals a from population npop + 1\\nwhich is ignored afterwards (forward in time)."
    eps: "<i> <j> <p>  Partial Population admixture. Replaces a fraction of 1-p of\\npopulation i with individuals a from population j."
    ej: "<i> <j>  Speciation event at time t. Creates population j\\nfrom individuals of population i."
    n_set_present_day_size_i: "<n>       Set the present day size of population i to n*N0."
    i_change_size: "<i> <n>  Change the size of population i to n*N0 at time t."
    n_set_present_day_size_populations: "<n>      Set the present day size of all populations to n*N0."
    set_exponential_growth_rate_i: "<a>       Set the exponential growth rate of population i to a."
    i_change_exponential: "<i> <a>  Change the exponential growth rate of population i to a\\nat time t."
    set_exponential_growth_rate_populations: "Set the exponential growth rate of all populations to a."
    change_exponential_rate: "<a>      Change the exponential growth rate of all populations to a\\nat time t."
    set_mutation_rate: "Set the mutation rate to theta = 4N0*mu, where mu is the\\nneutral mutation rate per locus."
    print_genealogies_newick: "Print the simulated local genealogies in Newick format."
    print_genealogies_oriented: "Print the simulated local genealogies in Oriented Forest format."
    print_tmrca_length: "Print the TMRCA and the local tree length for each segment."
    os_fs: "Print the Site Frequency Spectrum for each locus."
    sc: "[ms|rel|abs] Scaling of sequence positions. Either\\nrelative (rel) to the locus length between 0 and 1,\\nabsolute (abs) in base pairs or as in ms (default)."
    in_it: "Read genealogies at the beginning of the sequence."
    seed: "[<SEED2> <SEED3>]   The random seed to use. Takes up to three\\ninteger numbers."
    specify_number_significant: "Specify the number of significant digits used in the output.\\nDefaults to 6."
    print_model: ","
  }
  output {
    File out_stdout = stdout()
  }
}