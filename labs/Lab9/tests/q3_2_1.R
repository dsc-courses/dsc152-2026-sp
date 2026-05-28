test = list(
  name = "q3_2_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        # I think this works! But check it. 
        summary_test <- matrix(NA, nrow=9, ncol=4)
        rownames(summary_test) <- c("R1 COIN-IN", "R1 DROP", "R1 RAKE", "R2 COIN-IN", "R2 DROP", "R2 RAKE", "R3 COIN-IN", "R3 DROP", "R3 RAKE")
        colnames(summary_test) <- c("Mean", "Std. Dev", "Min.", "Max.")
        for(i in 1:9){
            summary_test[i,] <- c(mean(casino[[i+11]]), sd(casino[[i+11]]), min(casino[[i+11]]), max(casino[[i+11]]))
        }
        summary_test <- hash(summary_test)
        testthat::expect_equivalent(hash(summary_usd), summary_test)
      }
    )
  )
)