test = list(
  name = "q4_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        graph_log_test <- hash(c(3,5))
        testthat::expect_equal(hash(graph_log_obs), graph_log_test)
      }
    )
  )
)