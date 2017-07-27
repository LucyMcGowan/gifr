#' Convert a .mov file to a .gif
#'
#' @param input Character. File path for your .mov file.
#' @param output Character. File path for your new .gif file.
#'   Will default to `{input}.gif`
#' @param size Character. The size of the image, in the format
#'   "100x100". Will default to "600x400"
#'
#' @export
#'
#' @examples
#' \dontrun{
#' make_gif(input = "my_mov.mov", output = "my_gif.gif")
#' }
make_gif <- function(input, output = NULL, size = NULL) {

  if (!file.exists(input)) {
    stop(glue::glue(
      "\nThe file you have input does not exist\n",
      "  * {input}"
    ),
    call. = FALSE)
  }

  if (is.null(output)) {
    output <- glue::glue("{basename(input)}.gif")
  }
  if (tools::file_ext(output) != "gif") {
    stop(glue::glue(
      "\n`output` must be a .gif file. You gave us:\n",
      "  * {output}"
    ),
    call. = FALSE)
  }
  if (is.null(size)) {
    size <- "600x400"
  }
  command <- glue::glue("ffmpeg -i {input} ",
                        "-s {size} ",
                        "-pix_fmt rgb24 ",
                        "-r 10 ",
                        "-f gif ",
                        "- | gifsicle --optimize=3 --delay=3 ",
                        "> {output}")
  system(command,
         show.output.on.console = FALSE)
}
