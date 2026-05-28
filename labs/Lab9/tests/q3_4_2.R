test = list(
  name = "q3_4_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        prim_test <- hash(c(2,4))
        testthat::expect_equal(hash(prim_obs), prim_test)
      }
    )
  )
)