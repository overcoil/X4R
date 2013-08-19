\name{xmlaExecute}
\alias{xmlaExecute}

\title{XMLA Execute Method}
\description{
    Executes an MDX command and returns its result-set from the XMLA web service.
}
\usage{
    xmlaExecute(handle, query, propertyList="")
}
\arguments{
    \item{handle}{Connection object of class "XMLA" returned by \code{xmlaConnect}.}
    \item{query}{A valid MDX query to be executed on the XMLA server.}
    \item{propertyList}{Semicolon separated key=value pairs of properties. See example.}
}
\details{
    \code{xmlaExecute} calls XMLA's Execute method to executed a specified MDX command. 
	Properties may be defined in the \code{propertyList} and defaults to no properties. 
}
\value{
    A data frame if the MDX command returned a result-set. \cr
	\code{TRUE} if the MDX command returned no data. \cr
	\code{FALSE} if an error occurred.
}
\note{
    If returning an MDDataSet, the first column of the data frame contains the members of axis(0)'s rowset.\cr
	
	All measures from the Cellset is currently returned as a double (numeric).
}
\seealso{
    \code{\link{xmlaConnect}}, \code{\link{xmlaClose}}, \code{\link{xmlaDiscover}}
}
\examples{\dontrun{
    myData <- xmlaExecute(handle, "myQuery", propertyList="Catalog=Adventure Works DW;Format=Multidimensional")
}}
\references{
For more information on MDX and XMLA, please refer to your OLAP server documentation. Common documentation starting points are:

Microsoft SQL Server Analysis Services: \cr
\url{http://msdn.microsoft.com/en-us/library/ms145506.aspx} \cr
\url{http://technet.microsoft.com/en-us/library/ms186604.aspx}

SAP BW: \cr
\url{http://help.sap.com/javadocs/nw04s/sps08/bi/connectors/xmla_howto.html}
\url{http://help.sap.com/saphelp_nw04/helpdata/en/9f/9b8f3c855f0454e10000000a11405a/frameset.htm}

SAP HANA: \cr
\url{http://help.sap.com/hana/SAP_HANA_Developer_Guide_en.pdf}

Books:

\emph{MDX Solutions, 2nd Ed.} (
\url{http://www.amazon.com/MDX-Solutions-Microsoft-Analysis-Services/dp/0471748080/ref=sr_1_1?ie=UTF8&qid=1376687889&sr=8-1&keywords=mdx+solutions} )
}

\keyword{IO}
\keyword{database}
\keyword{ReX}