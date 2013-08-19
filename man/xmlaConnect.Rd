\name{xmlaConnect}
\alias{xmlaConnect}

\title{Connect to an XMLA Service}
\description{
    Open a connection to an XMLA web service.
}
\usage{
    xmlaConnect(url, uid="", pwd="")
}
\arguments{
    \item{url}{Character string. The XMLA service URL.}
    \item{uid}{Character string. Username, for authentication (if required).}
    \item{pwd}{Character string. Password, for authentication (if required).}
}
\details{
    \code{xmlaConnect} establishes a session to the XMLA service at the specified url.
    The latter 2 parameters may be left out if authentication is not required.
}
\value{
    If successful, a non-negative integer of class \code{"XMLA"} with attributes \code{URL}, 
    \code{username}, \code{password}, and \code{sessionID}. Otherwise returns \code{FALSE}.
}
\note{
    If sessions are not supported by XMLA service, value returned is still a connection	handle 
    containing connection details and should be used for \code{xmlaExecute} and \code{xmlaDiscover} 
    requests. (Session ID returned in this case is 1.)
}
\seealso{
    \code{\link{xmlaClose}}, \code{\link{xmlaExecute}}, \code{\link{xmlaDiscover}}
}
\examples{\dontrun{
    handle <- xmlaConnect("myXMLAServiceURL", uid="myUsername", pwd="myPassword")
}}
\references{
Refer to \code{\link{xmlaExecute}} for full references.
}
\keyword{IO}
\keyword{database}
\keyword{X4R}