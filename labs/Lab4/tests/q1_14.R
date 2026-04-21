test = list(
  name = "q1_14",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.numeric(perm_pval_q114))
        testthat::expect_true(is.numeric(ttest_pval_q114))
        testthat::expect_true(perm_pval_q114 >= 0 && perm_pval_q114 < 0.05)
        testthat::expect_equal(ttest_pval_q114, p_value_beta1_q12)
      }
    )
  )
)