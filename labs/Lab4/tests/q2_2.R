test = list(
  name = "q2_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(q2_2_ans %in% c(1, 2, 3))
        testthat::expect_equal(q2_2_ans, 2)
      }
    )
  )
)