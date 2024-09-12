library(MASS)
library(ggplot2)

# Generate data
mu <- c(0, 0)
Sigma <- matrix(c(1, 0.5, 0.5, 1), nrow = 2)
xy <- mvrnorm(n = 1000, mu = mu, Sigma = Sigma)

# Create plot
p <- ggplot(data.frame(x = xy[,1], y = xy[,2]), aes(x = x, y = y)) +
  geom_point(alpha = 0.3) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", alpha = 0.3) +
  scale_fill_viridis_c() +
  theme_minimal() +
  labs(title = "Bivariate Normal Distribution",
       x = expression(X[1]),
       y = expression(X[2]))

ggsave("multivariate_normal.pdf", p, width = 7, height = 7)