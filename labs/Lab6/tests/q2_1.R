test = list(
  name = "q2_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(length(overall_ftest) == 2)
        testthat::expect_true(list(overall_ftest) %in% list(c(2, 3), c(3, 2)))
      }
    )
  )
)