library(ggplot2)

set.seed(123)
n_snps <- 10000
chromosome <- rep(1:5, each = n_snps/5)
position <- rep(1:(n_snps/5), 5)
p_value <- runif(n_snps)
p_value[sample(1:n_snps, 10)] <- runif(10, 0, 1e-7)  # Some significant SNPs

df <- data.frame(SNP = 1:n_snps, CHR = chromosome, BP = position, P = p_value)

p <- ggplot(df, aes(x = SNP, y = -log10(P), color = as.factor(CHR))) +
  geom_point(alpha = 0.8) +
  scale_color_manual(values = rep(c("#276FBF", "#183059"), 3)) +
  theme_minimal() +
  theme(legend.position = "none") +
  labs(x = "Chromosome", y = "-log10(p-value)", 
       title = "Manhattan Plot of GWAS Results") +
  scale_x_continuous(breaks = seq(0, n_snps, length.out = 5),
                     labels = c("1", "2", "3", "4", "5"))

ggsave("manhattan_plot.pdf", p, width = 10, height = 6)