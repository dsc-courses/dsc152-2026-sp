test = list(
  name = "q3_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(no_interaction_assumption, 2)
      }
    )
  )
)