version 1.0

task ArbPromlAachangemodel {
  input {
    String? bootstrapBootstrap
    String? aaAaChangeModel
    String? viewViewReport
    String? analysisAnalysis
    String? randomizeRandomize
    String? rearrangeRearrange
    String? rateRateVariation
    String? variationVariationCoeff
    String? hmmHmmRates
    String? inInVFraction
    Int? interactiveInteractive
  }
  command <<<
    arb_proml aachangemodel \
      ~{bootstrapBootstrap} \
      ~{aaAaChangeModel} \
      ~{viewViewReport} \
      ~{analysisAnalysis} \
      ~{randomizeRandomize} \
      ~{rearrangeRearrange} \
      ~{rateRateVariation} \
      ~{variationVariationCoeff} \
      ~{hmmHmmRates} \
      ~{inInVFraction} \
      ~{interactiveInteractive}
  >>>
}