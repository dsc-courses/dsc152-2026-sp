test = list(
  name = "q1_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(q1_4_ans %in% c(1, 2, 3))
        testthat::expect_equal(q1_4_ans, 1)
      }
    )
  )
)