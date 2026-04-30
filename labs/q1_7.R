test = list(
  name = "q1_7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(q1_7_ans %in% c(1, 2, 3, 4))
        testthat::expect_equal(q1_7_ans, 2)

      }
    )
  )
)