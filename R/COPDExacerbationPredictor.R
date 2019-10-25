#' Prediction model to predict exacerbations in patients with COPD
#' @param FEV1  A number for pecentage of predicted FEV1
#' @param pre_exac  Previous exacerbations: A binary variable taking 1 if the patient has the history of exacerbation, and 0 otherwise.
#' @param pack_years A number showing history of pack years of smoking
#' @param vasc_disease  A binary variable taking 1 if the patient has prior stroke, or 0 otherwise.
#' @examples
#' predictExacerbation(FEV1=32.9, pre_exac=1, pack_years=38, vasc_disease=1)
#' @export
predictExacerbation <- function(FEV1,pre_exac,pack_years,vasc_disease){
  result <- 1/(1+exp(-(-1.33+1.62*pre_exac-0.01*FEV1 + 0.15*2*log(pack_years) + 0.65*vasc_disease)))
  return (result)
}







# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'
