version 1.0

task BiasawayF {
  input {
    String winWinLen
    String stepStep
    String foregroundForeground
    String nNFold
    String plotPlotFilename
  }
  command <<<
    biasaway f \
      ~{if defined(winWinLen) then ("--winlen " +  '"' + winWinLen + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(foregroundForeground) then ("--foreground " +  '"' + foregroundForeground + '"') else ""} \
      ~{if defined(nNFold) then ("--nfold " +  '"' + nNFold + '"') else ""} \
      ~{if defined(plotPlotFilename) then ("--plot_filename " +  '"' + plotPlotFilename + '"') else ""}
  >>>
}