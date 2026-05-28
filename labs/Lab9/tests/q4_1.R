test = list(
  name = "q4_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        summaryl_test <- matrix(NA, nrow=9, ncol=4)
        for(i in 1:9){
            summaryl_test[i,] <- c(mean(log(casino[[i+11]])), sd(log(casino[[i+11]])), min(log(casino[[i+11]])), max(log(casino[[i+11]])))
        }
        rownames(summaryl_test) <- c("R1 COIN-IN", "R1 DROP", "R1 RAKE", "R2 COIN-IN", "R2 DROP", "R2 RAKE", "R3 COIN-IN", "R3 DROP", "R3 RAKE")
        colnames(summaryl_test) <- c("Mean", "Std. Dev", "Min.", "Max.")
        summaryl_test <- hash(summaryl_test)
        testthat::expect_equivalent(hash(summary_log), summaryl_test)
      }
    )
  )
)