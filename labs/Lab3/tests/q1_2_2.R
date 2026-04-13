test = list(
  name = "q1_2_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(length(ci_large_n), 2)
        testthat::expect_true(ci_large_n[1] < ci_large_n[2])
        testthat::expect_equal(abs(ci_large_n[1] - 2.34386693) < 1e-6, TRUE)
        testthat::expect_equal(abs(ci_large_n[2] - 6.29282343) < 1e-6, TRUE)
      }
    )
  )
)