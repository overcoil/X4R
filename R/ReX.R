xmlaConnect <- function(url, uid="", pwd="")
{
	connection <- .Call("RXMLAConnect", as.character(url), as.character(uid), as.character(pwd))
	if (class(connection) == "integer")
		class(connection) <- "XMLA"
	connection
}

xmlaClose <- function(handle)
{
	if(!xmlaValidHandle(handle))
		stop("argument is not an open XMLA handle")
	.Call("RXMLAClose", attr(handle, "Pointer"))
}

xmlaExecute <- function(handle, query, propertyList="")
{
	if(!xmlaValidHandle(handle))
		stop("first argument is not an open XMLA handle")
	resultList <- .Call("RXMLAExecute", attr(handle, "Pointer"), as.character(query), as.character(propertyList))
	if(class(resultList) == "list")
		resultDF <- data.frame(resultList, check.names=FALSE)
	else resultList
}

xmlaDiscover <- function(handle, requestType, restrictionList="", propertyList="")
{
	if(!xmlaValidHandle(handle))
		stop("first argument is not an open XMLA handle")
	resultList <- .Call("RXMLADiscover", attr(handle, "Pointer"), as.character(requestType), as.character(restrictionList), as.character(propertyList))
	if(class(resultList) == "list")
		resultDF <- data.frame(resultList, check.names=FALSE)
	else resultList
}

print.XMLA <- function(x, ...)
{
    cat("Connection ", x[1], "\nURL: ", attr(x, "URL"), "\nSessionID: ", attr(x, "Session"), "\nUsername: ", attr(x, "Username"), "\nPassword: ", attr(x, "Password"), "\n")
    invisible(x)
}

xmlaValidHandle <- function(handle)
{
	inherits(handle, "XMLA") && is.integer(handle) && .Call("RXMLAValidHandle", attr(handle, "Pointer"))
}