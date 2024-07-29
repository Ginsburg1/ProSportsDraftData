set.seed(100)
library(tibble)
x = rnorm(100)
y = x*2 + rnorm(100)
sample_data = data_frame(x = x, y = y)

usethis::use_data(sample_data, compress = "xz")
