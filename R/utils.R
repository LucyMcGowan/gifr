check_ffmpeg <- function() {
  loc <- Sys.which("ffmpeg")
  if (loc == "") {
    stop("\nThis function requires the installation of: \n  * ffmpeg:  https://www.ffmpeg.org",
         call. = FALSE)
  }
}

check_gifsicle <- function() {
  loc <- Sys.which("gifsicle")
  if (loc == "") {
    stop("\nThis function requires the installation of: \n  * gifsicle:  https://www.lcdf.org/gifsicle/",
         call. = FALSE)
  }
}

life_is_art <- system.file("extdata", "life_is_art.mov", package = "gifr")


