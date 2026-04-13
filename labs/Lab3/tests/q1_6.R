test = list(
  name = "q1_6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_equal(length(cohens_d_result), 2)
        testthat::expect_equal(as.numeric(cohens_d_func(c(-1, 0, 1, 0), mu_0 = 0)[1]), 0)
        testthat::expect_true(is.na(cohens_d_func(c(1,1))), NA)
        testthat::expect_equal(abs(as.numeric(cohens_d_result[1]) - 0.0959093900375731) < 1e-6, TRUE)
        testthat::expect_equal(cohens_d_result[2], "small")
      }
    )
  )
)