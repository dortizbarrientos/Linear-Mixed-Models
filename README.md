# Linear Mixed Models and BLUP Applications in Plant Breeding and Evolutionary Genetics

## Description
This repository contains resources related to **Linear Mixed Models (LMM)**, **Best Linear Unbiased Prediction (BLUP)**, heritability, kinship analysis, and genomic prediction. These models are foundational tools in plant breeding and evolutionary genetics, enabling accurate estimation of genetic and environmental effects on traits. The repository includes R scripts, visualizations, and theoretical documentation supporting these concepts and their applications.

### Key Features:
- **BLUP and GBLUP models**: Implementation and comparison of models for genetic predictions.
- **Heritability estimation**: Scripts for estimating heritability and variance components.
- **Kinship matrix construction**: Tools for generating and visualizing kinship matrices.
- **R scripts for genomic prediction**: Implementing GWAS and kinship-based genomic prediction models.
- **Theoretical documentation**: LaTeX-based documentation that outlines mathematical foundations, matrix operations, and statistical concepts relevant to mixed models.

## Table of Contents
1. [Getting Started](#getting-started)
2. [Installation](#installation)
3. [Usage](#usage)
   - Running R Scripts
   - Visualizing Results
4. [Project Structure](#project-structure)
5. [Contributing](#contributing)
6. [License](#license)
7. [Contact](#contact)

## Getting Started

### Prerequisites
- **R** (version 3.6.0 or later)
- R packages: `lme4`, `Matrix`, `ggplot2`, `tidyverse`, `MCMCglmm`, and others as needed by individual scripts.
- **LaTeX**: To compile the provided LaTeX documentation (`main.tex`), you will need a LaTeX distribution such as TeX Live or MiKTeX.

### Installation

1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/linear-mixed-models.git
    cd linear-mixed-models
    ```

2. **Install necessary R packages**:
    In your R console, run:
    ```r
    install.packages(c("lme4", "Matrix", "ggplot2", "MCMCglmm", "tidyverse"))
    ```

3. **Compile the LaTeX documentation** (optional):
    If you wish to compile the theoretical document:
    ```bash
    pdflatex main.tex
    ```

## Usage

### Running the R Scripts
Several R scripts are included in the repository to perform specific tasks related to mixed models, BLUP, heritability, and genomic prediction. Below is an outline of some key scripts:

- `blupPheno.R`: Computes BLUPs and compares them to observed phenotypes.
- `gwasMP.R`: Conducts Genome-Wide Association Studies (GWAS).
- `kinshipMap.R`: Computes and visualizes kinship matrices using molecular marker data.
- `mvnd.R`: Simulates multivariate normal distributions, useful for mixed model studies.
- `varComp.R`: Estimates phenotypic variance components.
  
Example of running an R script:
```bash
Rscript blupPheno.R
```

### Visualizing Results
- **BLUP Results**: The `blup_vs_phenotype.pdf` file compares BLUP predictions with observed phenotypes.
- **Kinship Matrix**: `kinship_heatmap.pdf` provides a heatmap representation of genetic relatedness.
- **Heritability and Variance Components**: Visualizations like `heritability_plot.png` and `variance_components.pdf` illustrate the genetic and environmental contributions to trait variation.

### Theoretical Documentation
The `main.tex` file contains theoretical discussions on matrix operations, mixed models, and BLUP. Compiling it with LaTeX will produce a comprehensive PDF explaining the mathematical foundations and their applications in plant breeding and evolutionary genetics.

## Project Structure
Here is a brief description of the major files and their purposes:

```
│── bayesianFreq_FC.jpg                  # Visual aid for Bayesian Frequency Concepts
│── blupPheno.R                          # R script for BLUP and phenotype comparison
│── gc_accuracy.R                        # R script for genomic selection accuracy analysis
│── kinshipMap.R                         # Script for kinship matrix computation
│── matrixInv_FC.png                     # Matrix inversion flowchart
│── main.tex                             # LaTeX documentation on Linear Mixed Models and BLUP
│── variance_components.pdf              # Visual representation of variance components
│── blups_vs_observed.png                # BLUP vs observed phenotype visualization
│── heritability_plot.png                # Heritability visualization
│── README.md                            # This readme file
```

## Contributing
Contributions are welcome! Please ensure that your pull requests are well-documented and tested. You can open issues for any problems or feature requests.

## License
This project is licensed under the MIT License. See `LICENSE` for more details.

## Contact
For any questions or collaborations, please reach out to:

- Daniel Ortiz-Barrientos  
- School of The Environment, The University of Queensland  
- Email: d.ortizbarrientos@uq.edu.au  
- Website: [Ortiz-Barrientos Laboratory of Evolutionary Genetic](http://www.ortizbarrientoslab.org)
