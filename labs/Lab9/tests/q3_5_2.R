test = list(
  name = "q3_5_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(hash(ind_cond), hash(1))
      }
    )
  )
)