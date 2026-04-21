test = list(
  name = "q1_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(line_conditions_ans))
        testthat::expect_equal(sort(line_conditions_ans), c(1, 2))
      }
    )
  )
)