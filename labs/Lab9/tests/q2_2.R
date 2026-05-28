test = list(
  name = "q2_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        prim_test <- hash(c(10,11,12))
        testthat::expect_equal(hash(primary), prim_test)
      }
    )
  )
)