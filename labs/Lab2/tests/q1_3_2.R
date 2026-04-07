test = list(
  name = "q1_3_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(round(TypeI_gam, 3), 0.042)
      }
    )
  )
)