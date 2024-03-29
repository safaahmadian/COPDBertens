% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/COPDExacerbationPredictor.R
\name{predictExacerbation}
\alias{predictExacerbation}
\title{Prediction model to predict exacerbations in patients with COPD}
\usage{
predictExacerbation(FEV1, pre_exac, pack_years, vasc_disease)
}
\arguments{
\item{FEV1}{A number for pecentage of predicted FEV1}

\item{pre_exac}{Previous exacerbations: A binary variable taking 1 if the patient has the history of exacerbation, and 0 otherwise.}

\item{pack_years}{A number showing history of pack years of smoking}

\item{vasc_disease}{A binary variable taking 1 if the patient has prior stroke, or 0 otherwise.}
}
\description{
Prediction model to predict exacerbations in patients with COPD
}
\examples{
predictExacerbation(FEV1=32.9, pre_exac=1, pack_years=38, vasc_disease=1)
}
