test = list(
  name = "q1_8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(gen_skew))
        sample_skew_q18 <- gen_skew(n = 20, sigma = 2)
        testthat::expect_true(is.list(sample_skew_q18) && all(c("x", "y") %in% names(sample_skew_q18)))
        testthat::expect_equal(length(sample_skew_q18$x), 20)
        testthat::expect_equal(length(sample_skew_q18$y), 20)
        testthat::expect_equal(typeI_skew_large, 0.05, tolerance = 0.02)
        testthat::expect_true(typeI_skew_small > 0.02 && typeI_skew_small < 0.15)

      }
    )
  )
)