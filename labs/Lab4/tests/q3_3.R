test = list(
  name = "q3_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(q3_3_ans %in% c(1, 2, 3))

        testthat::expect_equal(q3_3_ans, 1)
      }
    )
  )
)