\name{xmlaDiscover}
\alias{xmlaDiscover}

\title{XMLA Discover Method}
\description{
    Retrieves metadata from an XMLA web service.
}
\usage{
    xmlaDiscover(handle, requestType, restrictionList="", propertyList="")
}
\arguments{
    \item{handle}{Connection object of class "XMLA" returned by \code{xmlaConnect}.}
	\item{requestType}{Character string that determines the type of metadata to be returned.}
	\item{restrictionList}{Semicolon separated key=value pairs of restrictions. See example.}
	\item{propertyList}{Semicolon separated key=value pairs of properties. See example.}
}
\details{
    \code{xmlaDiscover} calls XMLA's Discover method to retrieve metadata. The type of metadata is 
	specified by \code{requestType} and \code{restrictionList}. Both \code{restrictionList} and 
	\code{propertyList} default to an empty string if not specified.
}
\value{
    A \code{"list"} object containing the specified metadata is returned with each item in list corresponding to 
	a row. \code{FALSE} if an error occurred.
	
	Common \code{requestType} include: \cr
	
	MDSCHEMA_CUBES \cr
	MDSCHEMA_DIMENSIONS \cr
	MDSCHEMA_FUNCTIONS \cr
	MDSCHEMA_HIERARCHIES \cr
	MDSCEHMA_LEVELS \cr
	MDSCHEMA_MEASURES \cr
	MDSCHEMA_MEMBERS \cr
	MDSCHEMA_PROPERTIES \cr
	
	Your OLAP server may support more or less metadata elements.
}
\seealso{
    \code{\link{xmlaConnect}}, \code{\link{xmlaClose}}, \code{\link{xmlaExecute}}
}
\examples{\dontrun{
    cubeList <- xmlaDiscover(handle, "MDSCHEMA_CUBES", 
	                restrictionList="CATALOG_NAME=Adventure Works DW",
		            propertyList="Catalog=Adventure Works DW;Format=Tabular")
}}
\references{
Refer to \code{\link{xmlaExecute}} for full references.
}
\keyword{IO}
\keyword{database}
\keyword{ReX}