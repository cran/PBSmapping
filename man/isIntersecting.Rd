\name{isIntersecting}
\alias{isIntersecting}
\title{Determine Whether Polygons are Self-Intersecting}
\description{
  Determine whether polygons found in a \link{PolySet} are
  self-intersecting.
}
\usage{
isIntersecting (polys, numericResult = FALSE)
}
\arguments{
  \item{polys}{\link{PolySet} to use.}
  \item{numericResult}{Boolean value; if \code{TRUE}, returns the number
    of intersections.}
}
\details{
  When \code{numericResult = TRUE}, this function counts intersections
  as the algorithm processes them.  It counts certain types (i.e., those
  involving vertices and those where an edge retraces over an edge) more
  than once.

  The function does not give special consideration to holes.  It returns
  a value for each unique (\code{PID}, \code{SID}), regardless of
  whether a contour represents a hole.
}
\value{
  \link{PolyData} with columns \code{PID}, \code{SID} (\emph{may be missing}),
  and \code{intersecting}.  If \code{numericResult} is \code{TRUE},
  \code{intersecting} contains the number of intersections.  Otherwise,
  it contains a Boolean value.
}
\seealso{
  \code{\link{isConvex}},
  \link{PolySet}.
}
\examples{
#--- load the data (if using R)
if (!is.null(version$language) && (version$language == "R"))
  data(nepacLL);
#--- calculate then print the polygons that are self-intersecting
p <- isIntersecting(nepacLL, numericResult = FALSE);
print(p[p$intersecting, ]);
}
\keyword{manip}