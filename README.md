README
================

This is a repository for the workshop and lecture on **Unsupervised
Learning** as taught at [NGSchool2022: Machine Learning in Computational
Biology](https://ngschool.eu/ngschool2022/) on 16-17.09 in Jablonna,
Poland.

Authors: [Kasia Kędzierska](https://kasia.codes/) and [Kaspar
Märtens](https://kaspar.website/)

## Tutors

This tutorial, together with a proceeding lecture \[slides can be found
[here](slides.pdf)\], are jointly prepared and taught by [Kaspar
Märtens](https://kaspar.website/) and [Kasia
Kędzierska](https://kasia.codes/). Kasia is a final year PhD student in
Genomic Medicine and Statistics at Wellcome Centre for Human Genetics at
the University of Oxford. Kaspar recently finished his PhD in
Statistical Machine Learning at the University of Oxford. Since then he
was a postdoctoral Research Fellow at the Alan Turing Institute and
worked at Apple Health AI. Currently, he is based in the Big Data Institute
at the University of Oxford.

## Outline

We split the two 90 minutes sessions into a lecture and a workshop. In
that space of time is quite difficult to cover the area so vast as
Unsupervised Learning. Our goal here was to talk about the methods,
explain their applications and some intuitions around them. In order to
fully understand them we would recommend exploring each method in more
detail in the materials we link below.

What do we cover/explore?

-   Dimensionality reduction:
    -   Linear: PCA
    -   Non-linear: tSNE, UMAP
-   Clustering:
    -   K-means
    -   Hierarchical clustering

The tutorial is self contained and you should be able to run at home as
well. There are some questions and exercises there, as well as the
points to ponder about. We would discuss them all at the workshop.

## Requirements

In order to be able to run this tutorial you need:

-   `RStudio` v1.0.136 or later
-   `R` \>= 4.0
-   and a few `R` packages.

The packages you need are all listed in `R_packages_list.txt` file in
`scripts` directory.

We also prepared the `prep_help.R` script that will check if you have
all necessary packages, and if not will try to install them. You can
either open the script with RStudio and click `Run` or use command line:

``` bash
Rscript --vanilla scripts/prep_help.R
```

It might also be good to save the output of the script for potential
debugging, you can use `tee`, for example, to copy the output of the
command line to the file.

``` bash
Rscript --vanilla scripts/prep_help.R |& tee prep_help.log
```

You are all done if the last message you saw was:

    SUCCESS: Fantastic! All packages installed and ready.

### NGSchool2022

You don’t have to worry about your setup - just follow the [NGSchool2022
IT
instructions](https://docs.google.com/document/d/e/2PACX-1vSSDcqlNCps9nP5rqcYU8NMYv6xntlxS3pH4CSTuOFFNNOUeFNkbfYCLXNmJoTTw8aSVCb6XHlleUug/pub)
and pull the appropriate docker image. All the packages are already
installed there.

## Content of the repository

The repository contains few files:

-   *`notebooks/00_data_preparation`* - this is the file with code used
    to download, prepare and normalise the data for the tutorial. We
    used
    [`TCGAbiolinks`](https://www.bioconductor.org/packages/release/bioc/vignettes/TCGAbiolinks/inst/doc/index.html)
    package that can access GDC data and download & read it in your R
    session directly.
-   *`notebooks/01_unsupervised_learning_in_R`* - both
    [slides](notebooks/01_usnupervised_learning_in_R.pdf) and [Quarto
    file with code](notebooks/01_usnupervised_learning_in_R.Rmd) that
    generated the slides with unsupervised learning in R using [Palmer
    Penguins data set](https://github.com/allisonhorst/palmerpenguins).
-   *`notebooks/tutorial/tutorial.Rmd`* - the self contained tutorial
    where we look at the TCGA BRCA data set & annotation from [this
    paper](doi.org/10.1016/j.ccell.2018.03.014).

## Additional materials and further reading

-   [How to explain PCA to your grandmother?](https://stats.stackexchange.com/a/140579)
-   [Nice blog post on PCA](http://alexhwilliams.info/itsneuronalblog/2016/03/27/pca/)
-   [Comparing UMAP and tSNE for single
    cell](https://blog.bioturing.com/2022/01/14/umap-vs-t-sne-single-cell-rna-seq-data-visualization/)
-   [Interactive PCA visualisations on
    setosa.io](https://setosa.io/ev/principal-component-analysis/)
-   [Understanding PCA using Shiny and Stack Overflow
    data](https://www.rstudio.com/resources/rstudioconf-2018/understanding-pca-using-shiny-and-stack-overflow-data/)

### Related reading

Generative art

-   [Using tSNE for generative
    art](https://clauswilke.com/art/post/tsne-generative)

### Controversies around the UMAP, tSNE and PCA

-   [Lior Pachter: *“Tl;dr: definitely time to stop making t-SNE & UMAP
    plots.”*](https://twitter.com/lpachter/status/1440695021502545934)
    and some responses: [Dmitry Kobak: *“I still think this claim is
    absurd”*](https://twitter.com/hippopedoid/status/1441029520237158407)

### Various advanced topics 

Here are some pointers to literature on topics that Kaspar briefly mentioned

-   Modern non-linear extensions of PCA: [Variational Autoencoders](https://arxiv.org/pdf/1906.02691.pdf)
-   Bayesian statistics [(review paper)](https://www.nature.com/articles/s43586-020-00001-2)
-   Bayesian non-parametrics [(MLSS tutorial)](https://youtu.be/dNeW5zoNJ7g)
