test = list(
  name = "q1_6",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 5.0,
      code = {
        testthat::expect_type(perm_rr_q16, "double")
        testthat::expect_equal(length(perm_rr_q16), 2000)
        testthat::expect_equal(
            as.numeric(perm_rr_q16[1:5]),
            c(0.847457627118644, 1.42222222222222, 0.816666666666667, 0.981818181818182, 0.847457627118644),
            tolerance = 1e-8
        )
        

      }
    )
  )
)