test = list(
  name = "q2_5",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(q2_5_ans %in% c(1, 2, 3))
        testthat::expect_equal(q2_5_ans, 3)
      }
    )
  )
)