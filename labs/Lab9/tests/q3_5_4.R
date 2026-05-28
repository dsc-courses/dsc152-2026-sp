test = list(
  name = "q3_5_4",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(hash(ev_cond), hash(1))
      }
    )
  )
)