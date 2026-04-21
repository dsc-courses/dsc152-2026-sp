test = list(
  name = "q1_11",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        testthat::expect_true(is.function(gen_quad))
        sample_quad_q111 <- gen_quad(n = 20, sigma = 30)
        testthat::expect_true(is.list(sample_quad_q111) && all(c("x", "y") %in% names(sample_quad_q111)))
        testthat::expect_equal(length(sample_quad_q111$x), 20)
        testthat::expect_equal(length(sample_quad_q111$y), 20)
        testthat::expect_equal(typeI_quad, 0.05, tolerance = 0.02, scale = 1)

      }
    )
  )
)