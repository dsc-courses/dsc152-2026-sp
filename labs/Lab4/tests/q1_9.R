test = list(
  name = "q1_9",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(gen_hetero))
        sample_hetero_q19 <- gen_hetero(n = 20)
        testthat::expect_true(is.list(sample_hetero_q19) && all(c("x", "y") %in% names(sample_hetero_q19)))
        testthat::expect_equal(length(sample_hetero_q19$x), 20)
        testthat::expect_equal(length(sample_hetero_q19$y), 20)
        testthat::expect_true(typeI_hetero > 0.04 && typeI_hetero < 0.09)

      }
    )
  )
)