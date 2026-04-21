test = list(
  name = "q1_16",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(sim_typeI_perm))
        testthat::expect_true(all(c("n", "sigma", "reps", "n_perm") %in% names(formals(sim_typeI_perm))))
        testthat::expect_equal(typeI_perm_skew, 0.05, tolerance = 0.03, scale = 1)
      }
    )
  )
)