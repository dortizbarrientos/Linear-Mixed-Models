library(ggplot2)

data <- data.frame(
  component = c("Genetic", "Environmental", "Interaction", "Error"),
  value = c(0.4, 0.3, 0.2, 0.1)
)

p <- ggplot(data, aes(x = "", y = value, fill = component)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  scale_fill_brewer(palette = "Set2") +
  labs(title = "Variance Components in a Mixed Model")

ggsave("variance_components.pdf", p, width = 7, height = 7)