% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/toxbootMongoFuncs.R
\name{toxbootWriteMongo}
\alias{toxbootWriteMongo}
\title{Write bootstrap results to mongoDB}
\usage{
toxbootWriteMongo(dat, this_m4id, boot_method, replicates, logc_vect, starttime,
  concvals, datchemresult, datsample)
}
\arguments{
\item{dat}{A data.table. Required columns are: logc: numeric, contains
concentrations resp: numeric, normalized response values paired with
concentrations m3id: numeric, value unique to each row corresponding to an
individual concentration and response m4id: numeric, value unique to an
aeid/spid pair. Multiple m3ids per m4id aeid: numeric, assay id spid:
character, sample ID bmad: numeric, baseline mad. Unique to an aeid.}

\item{this_m4id}{numeric length 1, m4id to bootstrap. Choice of m4id will
determine which rows are selected, and therefore the values of logc, resp,
m3id, aeid, spid, and bmad.}

\item{boot_method}{parameter passed to \code{toxbootReplicates} to determine
sampling method}

\item{replicates}{number of bootstrap samples. Default 100}

\item{logc_vect}{vect}

\item{starttime}{time}

\item{concvals}{logical, default is FALSE. If TRUE, dose response samples
written to the database as well.}

\item{datchemresult}{data.table}

\item{datsample}{data.table used if concval = T}
}
\description{
\code{toxbootWriteMongo} writes results to a mongo database
}
\details{
The fitted results are assembled
  into a json object using \code{jsonlite} and written to the mongoDB.
}
\seealso{
\code{\link{toxboot}}
}
