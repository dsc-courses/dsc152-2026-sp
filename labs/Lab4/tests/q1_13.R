test = list(
  name = "q1_13",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(perm_test_slope))
        testthat::expect_true(all(c("x", "y", "n_perm") %in% names(formals(perm_test_slope))))

        # Basic sanity check for bounds
        set.seed(1)
        x_chk_q113 <- runif(30, 0, 10)
        y_chk_q113 <- 1 + 2 * x_chk_q113 + rnorm(30)
        pval_chk_q113 <- perm_test_slope(x_chk_q113, y_chk_q113, n_perm=500)
        testthat::expect_true(pval_chk_q113 >= 0 && pval_chk_q113 <= 1)

        # Check behavior with a strong true signal
        set.seed(2)
        x_sig <- runif(100, 0, 10)
        y_sig <- 10 + 5 * x_sig + rnorm(100, sd = 2)
        pval_sig <- perm_test_slope(x_sig, y_sig, n_perm = 1000)
        testthat::expect_lt(pval_sig, 0.01)

        # Check behavior with pure noise
        set.seed(3)
        x_null <- runif(100, 0, 10)
        y_null <- rnorm(100)
        pval_null <- perm_test_slope(x_null, y_null, n_perm = 1000)
        testthat::expect_gt(pval_null, 0.05)
      }
    )
  )
)