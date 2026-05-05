test = list(
  name = "q2_4_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(relevant_pvals_B, 1)
      }
    )
  )
)