test = list(
  name = "q2_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(q2_4_ans %in% c(1, 2, 3, 4))
        testthat::expect_equal(q2_4_ans, 1)
      }
    )
  )
)