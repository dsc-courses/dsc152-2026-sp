test = list(
  name = "q2_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(q2_3_ans %in% c(1, 2, 3, 4))
        testthat::expect_equal(q2_3_ans, 3)
      }
    )
  )
)