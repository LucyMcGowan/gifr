% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_gif.R
\name{make_gif}
\alias{make_gif}
\title{Convert a .mov file to a .gif}
\usage{
make_gif(input, output = NULL, size = NULL)
}
\arguments{
\item{input}{Character. File path for your .mov file.}

\item{output}{Character. File path for your new .gif file.
Will default to \code{{input}.gif}}

\item{size}{Character. The size of the image, in the format
"100x100". Will default to "600x400"}
}
\description{
Convert a .mov file to a .gif
}
\examples{
\dontrun{
make_gif(input = "my_mov.mov", output = "my_gif.gif")
}
}
