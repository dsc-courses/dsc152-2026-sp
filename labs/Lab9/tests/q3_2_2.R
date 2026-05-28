test = list(
  name = "q3_2_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        r1_dpf_test <- hash(casino$R1_DROP * 0.15)
        testthat::expect_equal(hash(casino$R1_DROP_pf), r1_dpf_test)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        r2_dpf_test <- hash(casino$R2_DROP * 0.15)
        testthat::expect_equal(hash(casino$R2_DROP_pf), r2_dpf_test)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        r3_dpf_test <- hash(casino$R3_DROP * 0.15)
        testthat::expect_equal(hash(casino$R3_DROP_pf), r3_dpf_test)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        r1_cpf_test <- hash(casino$R1_COIN * 0.075)
        testthat::expect_equal(hash(casino$R1_COIN_pf), r1_cpf_test)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        r2_cpf_test <- hash(casino$R2_COIN * 0.075)
        testthat::expect_equal(hash(casino$R2_COIN_pf), r2_cpf_test)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        r3_cpf_test <- hash(casino$R3_COIN * 0.075)
        testthat::expect_equal(hash(casino$R3_COIN_pf), r3_cpf_test)
      }
    ),
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 0.14285714285714285,
      code = {
        # I think this works! But check it. 
        summary_test_pf <- matrix(NA, nrow=9, ncol=4)
        rownames(summary_test_pf) <- c("R1 COIN-IN", "R1 DROP", "R1 RAKE", "R2 COIN-IN", "R2 DROP", "R2 RAKE", "R3 COIN-IN", "R3 DROP", "R3 RAKE")
        colnames(summary_test_pf) <- c("Mean", "Std. Dev", "Min.", "Max.")
        summary_test_pf[c(1,4,7), ] <- summary_usd[c(1,4,7), ] * 0.075
        summary_test_pf[c(2,5,8), ] <- summary_usd[c(2,5,8), ] * 0.15
        summary_test_pf[c(3,6,9), ] <- summary_usd[c(3,6,9), ]
        summary_test_pf <- hash(round(summary_test_pf, 0))
        testthat::expect_equal(hash(round(summary_usd_profit, 0)), summary_test_pf)
      }
    )
  )
)