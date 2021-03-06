\name{plot.leverage.ppm}
\alias{plot.leverage.ppm}
\alias{persp.leverage.ppm}
\title{
  Plot Leverage Function
}
\description{
  Generate a pixel image plot, or a perspective plot,
  of a leverage function that has been computed by \code{\link{leverage.ppm}}.
}
\usage{
 \method{plot}{leverage.ppm}(x, \dots, showcut=TRUE, col.cut=par("fg"),
                             args.contour=list(), 
                             multiplot=TRUE)

 \method{persp}{leverage.ppm}(x, \dots, main)
}
\arguments{
  \item{x}{
    Leverage function (object of class \code{"leverage.ppm"}) computed by
    \code{\link{leverage.ppm}}.
  }
  \item{\dots}{
    Arguments passed to \code{\link{plot.im}} 
    or \code{\link{persp.im}} controlling the plot.
  }
  \item{showcut}{
    Logical. If \code{TRUE}, a contour line is plotted at the
    level equal to the theoretical mean of the leverage.
  }
  \item{col.cut}{
    Optional colour for the contour line.
  }
  \item{args.contour}{
    Optional list of arguments passed to
    \code{\link[graphics]{contour.default}} to control the
    plotting of the contour line.
  }
  \item{multiplot}{
    Logical value indicating whether it is permissible to display
    several plot panels.
  }
  \item{main}{
    Optional main title.
  }
}
\details{
  These functions are the \code{plot} and \code{persp} methods
  for objects of class \code{"leverage.ppm"}.
  Such objects are computed by the command \code{\link{leverage.ppm}}.

  The \code{plot} method displays the leverage function 
  as a colour pixel image using \code{\link{plot.im}},
  and draws a single contour line at the mean leverage value
  using \code{\link{contour.default}}.
  Use the argument \code{clipwin} to restrict the plot to a subset
  of the full data.

  The \code{persp} method displays the leverage function as a surface
  in perspective view, using \code{\link{persp.im}}.
}
\value{
  Same as for \code{\link{plot.im}} 
  and \code{\link{persp.im}} respectively.
}
\references{
  Baddeley, A., Chang, Y.M. and Song, Y. (2013)
  Leverage and influence diagnostics for spatial point process models.
  \emph{Scandinavian Journal of Statistics} \bold{40}, 86--104.
}
\author{
  \spatstatAuthors.
}
\seealso{
  \code{\link{leverage.ppm}}.
}
\examples{
   X <- rpoispp(function(x,y) { exp(3+3*x) })
   fit <- ppm(X ~x+y)
   lef <- leverage(fit)
   plot(lef)
   persp(lef)
}
\keyword{spatial}
\keyword{models}

