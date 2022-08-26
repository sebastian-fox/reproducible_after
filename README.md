
<!-- README.md is generated from README.Rmd. Please edit that file -->

# reproducible_after

<!-- badges: start -->
<!-- badges: end -->

The goal of reproducible_after is to demonstrate a simple bit of
analysis that is created with Reproducible Analytical Pipeline
principles

# Getting started

## Setting up - cloning the repository

Clone the repository with:

    git clone git@github.com:sebastian-fox/reproducible_after.git  # SSH

or

    git clone https://github.com/sebastian-fox/reproducible_after.git  # HTTPS

depending on how you have set up Git.

Open the `reproducible_after.Rproj` file.

## Recreating package versions using `renv`

Package versioning with this project is being done using the `renv`
package. If you don’t have this package installed already then it will
be installed upon opening the `reproducibility_after.Rproj` file.

To ensure versions used locally with this project are consistent, the
user must run the following line once in the console:

    renv::restore()

[Here](https://kevinushey-2020-rstudio-conf.netlify.com/slides.html#1)
are some excellent slides from the RStudio Conference 2020 describing
how `renv` works.

# Structure of the repository

    +-- R/
    |   +-- analysis.R - The code that performs the analysis and creates the output
    |   +-- libraries.R - the libraries used in the project
    +-- renv - contains all the information to recreate the analytical environment that this analysis was performed in
    +-- report folder where the outputs are saved
