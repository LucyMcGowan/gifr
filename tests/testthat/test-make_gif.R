context("Make gif")

test_that("make_gif works", {
  skip_on_travis()
  skip_on_cran()
  in_file <- life_is_art
  out_file <- "life_is_art.gif"
  on.exit(unlink(out_file))
  make_gif(in_file, out_file)
  expect_true(file.exists(out_file))
})
