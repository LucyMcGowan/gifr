
<!-- README.md is generated from README.Rmd. Please edit that file -->
gifr
====

MAKE GIFS IN R!

Installation
------------

You can install gifr from github with:

``` r
# install.packages("devtools")
devtools::install_github("LucyMcGowan/gifr")
```

You must have [`ffmpeg`](https://www.ffmpeg.org) and [`gifsicle`](https://www.lcdf.org/gifsicle/) installed. This is super under contstruction, so at the moment, if you don't have those installed, it will probably just fail with no explanation.

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
make_gif("input.mov", "output.gif")
```

![](https://thesavvyreader2014.files.wordpress.com/2016/07/excited.gif)
