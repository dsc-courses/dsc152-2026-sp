test = list(
  name = "q1_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(TypeI, 0.0674)
      }
    )
  )
)