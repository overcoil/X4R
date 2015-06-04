\name{xmlaClose}
\alias{xmlaClose}

\title{Closing an XMLA Session}
\description{
	Closes an open connection to an XMLA web service.
}
\usage{
	xmlaClose(handle)
}
\arguments{
	\item{handle}{Connection object of class "XMLA" returned by \code{xmlaConnect}.}
}
\details{
    \code{xmlaClose} closes a session to the XMLA service of the specified connection handle and frees up resources.
}
\value{
	\item{TRUE}{if session successfully closed.}
	\item{FALSE}{if error occurred while trying to close session.}
}
\seealso{
	\code{\link{xmlaConnect}}, \code{\link{xmlaExecute}}, \code{\link{xmlaDiscover}}
}
\references{
Refer to \code{\link{xmlaExecute}} for full references.
}
\keyword{IO}
\keyword{database}
\keyword{ReX}