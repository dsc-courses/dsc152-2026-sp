test = list(
  name = "q1_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(is.function(sim_select_then_infer))
        testthat::expect_true(all(c("reps", "x1", "x2") %in% names(formals(sim_select_then_infer))))

        set.seed(99)
        out_q12 <- sim_select_then_infer(reps = 100, hitters$Years, hitters$Hits)
        testthat::expect_true(is.list(out_q12))
        testthat::expect_true(all(c("pval_full", "pval_selected") %in% names(out_q12)))
        testthat::expect_equal(length(out_q12$pval_full), 100)
        testthat::expect_equal(length(out_q12$pval_selected), 100)
        testthat::expect_true(all(out_q12$pval_full >= 0 & out_q12$pval_full <= 1))
        testthat::expect_true(all(out_q12$pval_selected >= 0 & out_q12$pval_selected <= 1))
        # Under H_0, the full-model rate should be near 0.05
        testthat::expect_true(mean(check_q12$pval_full < 0.05) > 0.01 && mean(check_q12$pval_full < 0.05) < 0.15)
      }
    )
  )
)