% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/igvR.R
\name{setGenome,igvR-method}
\alias{setGenome,igvR-method}
\alias{setGenome}
\title{Specify the reference genome, currently limited to hg38, hg19, mm10, tair10.}
\usage{
\S4method{setGenome}{igvR}(obj, genomeName)
}
\arguments{
\item{obj}{An object of class igvR}

\item{genomeName}{A character string, one of "hg38", "hg19", "mm10", "tair10"}
}
\value{
An empty string, an error message if the requested genome is not yet supported
}
\description{
Specify the reference genome, currently limited to hg38, hg19, mm10, tair10.
}
\examples{
if(interactive()){
   igv <- igvR()
   setGenome(igv, "mm10")
   }

}
