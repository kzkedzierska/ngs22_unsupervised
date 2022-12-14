# few lines to help make sure we do have everything we need
# a helper abbreviation
`%not in%` <- Negate(`%in%`)
error_count <- 0 

needed_packages <-
  c("remotes", 
    # data wrangling and plotting packages
    "tidyverse", "patchwork", "ggsci", "glue", 
    # interactive tutorial
    "shiny",
    # toy datasets
    "palmerpenguins", 
    # UMAP
    "umap",
    # installing Bioconductor packages
    "BiocManager")

for (pkg in needed_packages) {
  if (pkg %not in% rownames(installed.packages())) {
    print(paste("Trying to install", pkg))
    install.packages(pkg)
    if ((pkg %not in% rownames(installed.packages()))) {
      msg <- paste("ERROR: Unsuccessful!", pkg, "not installed!",
                   "Check the log and try installing the package manually.")
      error_count <- error_count + 1
      stop(msg)
    } 
  }
  library(pkg, character.only = TRUE)
  if(pkg %in% loadedNamespaces()) {
    print(paste("Successful!", pkg, "loaded."))
  } else {
    error_count <- error_count + 1
    msg <- paste("ERROR: Unsuccessful!", pkg, 
                 "not loaded. Check error msg.")
    print(msg)
  }
}

# additional packages from github
needed_packages_remotes <- 
  c("jokergoo/ComplexHeatmap", "rstudio/learnr", 
    "rstudio/gradethis", "hadley/emo")

for (pkg in needed_packages_remotes) {
  pkg_name <- basename(pkg)
  if (pkg_name %not in% rownames(installed.packages())) {
    print(paste("Trying to install", pkg_name))
    remotes::install_github(pkg)
    if (pkg_name %not in% rownames(installed.packages())) {
      msg <- paste("ERROR: Unsuccessful!", pkg, "not installed!",
                   "Check the log and try installing the package manually.")
      stop(msg)
    } 
  }
  library(pkg_name, character.only = TRUE)
  if(pkg_name %in% loadedNamespaces()) {
    print(paste("Successful!", pkg_name, "loaded."))
  } else {
    error_count <- error_count + 1
    msg <- paste("ERROR: Unsuccessful!", pkg_name, "installed from:", pkg, 
                 "not loaded. Check error msg for.")
    print(msg)
  }
}

# additional packages from Bioconductor
needed_packages_bioc <- 
  c("SummarizedExperiment")

for (pkg in needed_packages_bioc) {
  if (pkg %not in% rownames(installed.packages())) {
    
    print(paste("Trying to install", pkg))
    
    # install with BiocManager
    BiocManager::install(pkg)
    
    if (pkg %not in% rownames(installed.packages())) {
      msg <- paste("ERROR: Unsuccessful!", pkg, "not installed!",
                   "Check the log and try installing the package manually.")
      stop(msg)
    } 
  }
  # check loading the package
  library(pkg, character.only = TRUE)
  if(pkg %in% loadedNamespaces()) {
    print(paste("Successful!", pkg, "loaded."))
  } else {
    error_count <- error_count + 1
    msg <- paste("ERROR: Unsuccessful!", pkg, "installed from Bioconductor ",
                 "not loaded. Check error msg for.")
    print(msg)
  }
}

if (error_count == 0) {
  print(glue("SUCCESS: Fantastic! All packages installed and ready."))
}

