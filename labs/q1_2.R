test = list(
  name = "q1_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(q1_2_ans %in% c(1, 2, 3, 4))
        testthat::expect_equal(q1_2_ans, 3)

      }
    )
  )
)