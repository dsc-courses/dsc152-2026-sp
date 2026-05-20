test = list(
  name = "q1_7",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_type(perm_pval_q17, "double")
        testthat::expect_equal(as.numeric(perm_pval_q17), 0.3015, tolerance = 1e-10)
        

      }
    )
  )
)