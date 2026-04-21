test = list(
  name = "q1_7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(sim_typeI))
        testthat::expect_true(all(c("gen_data", "reps") %in% names(formals(sim_typeI))))
        testthat::expect_true(is.function(gen_baseline))
        sample_baseline_q17 <- gen_baseline(n = 20, sigma = 2)
        testthat::expect_true(is.list(sample_baseline_q17) && all(c("x", "y") %in% names(sample_baseline_q17)))
        testthat::expect_equal(length(sample_baseline_q17$x), 20)
        testthat::expect_equal(length(sample_baseline_q17$y), 20)
        testthat::expect_true(typeI_baseline > 0.03 && typeI_baseline < 0.07)

      }
    )
  )
)