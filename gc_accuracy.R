library(ggplot2)

set.seed(123)
pop_size <- seq(100, 2000, by = 100)
accuracy <- 0.5 + 0.3 * (1 - exp(-pop_size / 500))
accuracy <- accuracy + rnorm(length(pop_size), 0, 0.02)

df <- data.frame(pop_size = pop_size, accuracy = accuracy)

p <- ggplot(df, aes(x = pop_size, y = accuracy)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "loess", se = FALSE, color = "blue") +
  theme_minimal() +
  labs(x = "Training Population Size", y = "Prediction Accuracy",
       title = "Genomic Selection Accuracy vs. Training Population Size") +
  ylim(0, 1)

ggsave("gs_accuracy.pdf", p, width = 8, height = 6)