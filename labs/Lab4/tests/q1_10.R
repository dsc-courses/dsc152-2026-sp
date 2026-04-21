test = list(
  name = "q1_10",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(gen_indep))
        sample_indep_q110 <- gen_indep(n = 20, sigma = 2, phi = 0.5)
        testthat::expect_true(is.list(sample_indep_q110) && all(c("x", "y") %in% names(sample_indep_q110)))
        testthat::expect_equal(length(sample_indep_q110$x), 20)
        testthat::expect_equal(length(sample_indep_q110$y), 20)
        testthat::expect_true(typeI_indep > 0.35 && typeI_indep < 0.65)

      }
    )
  )
)