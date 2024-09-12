library(ggplot2)

# Generate a simple kinship matrix
n <- 20
kinship <- matrix(runif(n^2, 0, 0.5), nrow = n)
diag(kinship) <- 1
kinship[lower.tri(kinship)] <- t(kinship)[lower.tri(kinship)]

kinship_df <- expand.grid(x = 1:n, y = 1:n)
kinship_df$value <- as.vector(kinship)

p <- ggplot(kinship_df, aes(x = x, y = y, fill = value)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  theme_minimal() +
  labs(title = "Kinship Matrix Heatmap", x = "Individuals", y = "Individuals") +
  theme(axis.text = element_blank(), axis.ticks = element_blank())

ggsave("kinship_heatmap.pdf", p, width = 8, height = 7)