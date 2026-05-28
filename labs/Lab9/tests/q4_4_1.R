test = list(
  name = "q4_4_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        set.seed(1)
        y_test <- 14.2
        for(i in 2:217){
            y_test[i] <- y_test[i-1] + rnorm(1)
        }

        y_test <- hash(y_test)
        testthat::expect_equal(hash(y), y_test)
      }
    )
  )
)