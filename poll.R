# What code do you think `df |> count(x)` is equivalent to?

# count(df, x)
# df |> group_by(x) |> summarize(n = n())

# add_count(df, x)
# df |> group_by(x) |> mutate(n = n())

# not quite tally(df, x)
# add_tally()
# df |> mutate(n = n())
# df |> summarize(n = n())

n_distinct(letters)
length(unique(letters))

# distinct()

# not quite nrow(df)
# df |> nrows(x)

df <- tibble(
  g = c(1, 1, 2, 2, 2),
  x = c(1, 1, 2, 1, 2),
  y = c(3, 2, 1, 3, 1)
)
df |> distinct()
df |> distinct(g, x)
df |> distinct(g, x, .keep_all = TRUE)
