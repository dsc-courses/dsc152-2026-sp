test = list(
  name = "q3_3",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        g1obs_test <- hash(c(3,4))
        testthat::expect_equal(hash(graph1_obs), g1obs_test)
      }
    )
  )
)