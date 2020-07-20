# Install Packages --------------------------------------------------------

# install.packages("psych")
# install.packages("here")
# install.packages("tidyverse")

# Load Packages -----------------------------------------------------------

library(psych)
library(purrr)
library(dplyr)

# Set Random Seed ---------------------------------------------------------

set.seed(60032142L)

# Generate Data -----------------------------------------------------------

cor_mat <- matrix(c(
  1.00, 0.30,
  0.30, 1.00
), ncol = 2)

zscores <- sim.correlation(cor_mat, n = 61, data = TRUE)

zscores <- list(zscores[, 1], zscores[, 2])

donnes <- map(zscores, ~sim.poly(
  nvar = 7,
  n = 61,
  low = -2,
  high = 2,
  a = NULL,
  c = 0,
  z = 1,
  d = NULL,
  mu = 0,
  sd = 1,
  cat = 7,
  mod = "logistic",
  theta = .)$items
) %>%
  map(as_tibble) %>%
  map(rownames_to_column, var = "participant_id") %>%
  bind_rows(.id = "time") %>%
  dplyr::relocate(participant_id, .before = time) %>%
  mutate(
    time = factor(time,
      levels = c("1", "2"),
      labels = c("pre-marriage", "post-marriage")
    ),
    participant_id = sprintf("%03.0f", as.numeric(participant_id))
  ) %>%
  rename_with(~ gsub("V", "rsat_", .))