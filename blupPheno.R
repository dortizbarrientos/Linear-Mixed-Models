library(ggplot2)

set.seed(123)
n <- 100
true_breeding_value <- rnorm(n)
phenotype <- true_breeding_value + rnorm(n, sd = 0.5)
blup <- 0.8 * phenotype  # Simplified BLUP for illustration

data <- data.frame(
  true_breeding_value = true_breeding_value,
  phenotype = phenotype,
  blup = blup
)

p <- ggplot(data, aes(x = true_breeding_value)) +
  geom_point(aes(y = phenotype, color = "Phenotype"), alpha = 0.6) +
  geom_point(aes(y = blup, color = "BLUP"), alpha = 0.6) +
  geom_abline(intercept = 0, slope = 1, linetype = "dashed") +
  theme_minimal() +
  labs(x = "True Breeding Value", y = "Estimated Value",
       title = "BLUP vs. Phenotypic Selection") +
  scale_color_manual(values = c("Phenotype" = "blue", "BLUP" = "red"))

ggsave("blup_vs_phenotype.pdf", p, width = 8, height = 6)