\name{EventData}
\alias{EventData}
\alias{as.EventData}
\alias{is.EventData}
\title{EventData Objects}
\usage{
as.EventData(x, projection = NULL, zone = NULL)
is.EventData(x, fullValidation = TRUE)
}
\arguments{
  \item{x}{data frame to be coerced or tested.}
  \item{projection}{optional \code{projection} attribute to add to
    EventData, possibly overwriting an existing attribute.}
  \item{zone}{optional \code{zone} attribute to add to EventData,
    possibly overwriting an existing attribute.}
  \item{fullValidation}{Boolean value; if \code{TRUE}, fully test
    \code{x}.}
}
\description{
  PBS Mapping functions that expect EventData will accept properly
  formatted data frames in their place (see 'Details').
  
  \code{as.EventData} attempts to coerce a data frame to an object with
  class EventData.

  \code{is.EventData} returns \code{TRUE} if its argument is of class
  EventData.
}
\details{
We define EventData as a data frame with at least three fields named
(\code{EID}, \code{X}, \code{Y}). Conceptually, an EventData object describes events that
take place at specific points (\code{X}, \code{Y}) in two-dimensional
space. Additional fields specify measurements associated with these
events. For example, in a fishery context EventData could describe
fishing events associated with trawl tows, based on the fields:
\itemize{
  \item \code{EID} - fishing event (tow) identification number;
  \item \code{X}, \code{Y} - fishing location;
  \item \code{Duration} - length of time for the tow;
  \item \code{Depth} - average depth of the tow;
  \item \code{Catch} - biomass captured.
}
Like \link{PolyData}, EventData can have attributes \code{projection}
and \code{zone}, which may be absent. Inserting the string
\code{"EventData"} as the class attribute's first element alters the
behaviour of some functions, including \code{\link{print}} (if
\code{\link{PBSprint}} is \code{TRUE}) and \code{\link{summary}}.
}
\value{
  The \code{as.EventData} method returns an object with classes
  \code{"EventData"} and \code{"data.frame"}, in that order.
}
\seealso{
  \link{LocationSet},
  \link{PolyData},
  \link{PolySet}.
}
\keyword{classes}
\keyword{documentation}