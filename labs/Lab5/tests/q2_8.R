test = list(
  name = "q2_8",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(is.function(sim_hetero_q28))
        testthat::expect_true(is.function(sim_homo_q28))
        testthat::expect_true(all(c("n", "reps") %in% names(formals(sim_hetero_q28))))
        testthat::expect_true(all(c("n", "reps") %in% names(formals(sim_homo_q28))))

        testthat::expect_true(is.numeric(typeI_hetero_q28))
        testthat::expect_true(is.numeric(typeI_homo_q28))

        # Heteroskedastic case should be visibly inflated above nominal 0.05
        testthat::expect_true(typeI_hetero_q28 > 0.10 && typeI_hetero_q28 < 0.22)
        # Homoskedastic baseline should be near nominal 0.05
        testthat::expect_true(typeI_homo_q28 > 0.03 && typeI_homo_q28 < 0.08)
        # Inflation should be visible
        testthat::expect_true(typeI_hetero_q28 - typeI_homo_q28 > 0.04)

      }
    )
  )
)