test = list(
  name = "q4_4_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(hash(AR1), hash(c(3,5)))
      }
    )
  )
)