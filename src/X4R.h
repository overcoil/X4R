/*
 *  X4R/src/X4R.h by Norris Lee and George Chow. Copyright (C) 2013
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  A copy of the GNU General Public License is available at
 *  http://www.r-project.org/Licenses/
 */

#ifndef _X4R_X4R_H
#define _X4R_X4R_H

#include <Rcpp.h>
#include "soapXmlaWebServiceSoapProxy.h"
#include "XmlaWebServiceSoap.nsmap"
#include "rapidxml.hpp"

RcppExport SEXP RXMLAConnect(SEXP connection, SEXP uid, SEXP pw);

RcppExport SEXP RXMLAClose(SEXP handle);

RcppExport SEXP RXMLAExecute(SEXP handle, SEXP query, SEXP rPropertiesString);

RcppExport SEXP RXMLADiscover(SEXP handle, SEXP request, SEXP rRestrictionsString, SEXP rPropertiesString);

#endif