test = list(
  name = "q3_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(sim_typeI_confound_adj))
        testthat::expect_true(all(c("n", "rho", "reps") %in% names(formals(sim_typeI_confound_adj))))

        testthat::expect_true(is.numeric(typeI_confound_adj))
        testthat::expect_equal(length(typeI_confound_adj), 1)

        testthat::expect_true(typeI_confound_adj > 0.02 && typeI_confound_adj < 0.08)

        testthat::expect_true(typeI_confound_adj < typeI_confound_unadj - 0.5)
      }
    )
  )
)