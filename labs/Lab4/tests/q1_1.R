test = list(
  name = "q1_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(q1_1_ans %in% c(1, 2, 3, 4))
        testthat::expect_equal(q1_1_ans, 2)
      }
    )
  )
)