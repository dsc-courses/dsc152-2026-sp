test = list(
  name = "q3_6_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(steps_equivalence_exp, 1)
      }
    )
  )
)