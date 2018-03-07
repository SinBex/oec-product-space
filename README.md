
<!-- README.md is generated from README.Rmd. Please edit that file -->
Description
-----------

Scripts to recreate the trade data available at the [Observatory of Economic Complexity](http://atlas.media.mit.edu/en/).

We have a repo explaining the methodological details. Please visit [OEC Documentation](https://observatory-economic-complexity.github.io/oec-documentation/) and the [Official website](http://atlas.media.mit.edu/en/) for the details.

These scripts are released under MIT license.

How to use this project
-----------------------

While you can run the scripts from UNIX terminal, we highly recommend [RStudio](https://www.rstudio.com/).

Each project is organized as an RStudio project. Each project contains a master script titled `0-some-function.R` at the top level but some projects such as *Product Space* are organized in subfolders where each subfolder contains a master script.

The master script, for any case, runs a function with user prompt and/or simple scripts. The safe way to run this without errors is to open the project and then run the master script from RStudio.

[OEC Packages Snapshot](https://github.com/observatory-economic-complexity/oec-packages-snapshot) contains a bundle to avoid dependencies or packages related problems, but this project already contains an unbundled set of packages to ease reproducibility.

You can read more about RStudio projects [here](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects).

Project structure
-----------------

    oec-yearly-datasets
    └── README.md
    └── README.Rmd
    └── hs92-sitc
    |    └── 0-do-all.R
    |    └── 0-scripts
    |    └── 1-layouts-raw
    |    └── 2-layouts-d3plus1
    |    └── 3-layouts-d3plus2
    └── packrat

Output
------

The script generates different files organized under `hs92-sitc/2-layouts-rpackage/` and `hs92-sitc/3-layouts-d3plus2/`.

### Generated files (HS 92 layouts fro D3plus 2)

#### HS 92 edges

    ## Skim summary statistics  
    ##  n obs: 2532    
    ##  n variables: 2    
    ## 
    ## Variable type: integer
    ## 
    ## variable   missing   complete   n      mean     sd       p0   p25   median   p75   p100   hist     
    ## ---------  --------  ---------  -----  -------  -------  ---  ----  -------  ----  -----  ---------
    ## source     0         2532       2532   230.94   200.9    0    68    193      309   865    ▇▅▆▂▁▁▁▁ 
    ## target     0         2532       2532   238.07   191.91   1    86    202      305   864    ▇▅▆▂▁▁▁▁

#### HS 92 nodes

    ## Skim summary statistics  
    ##  n obs: 866    
    ##  n variables: 3    
    ## 
    ## Variable type: character
    ## 
    ## variable   missing   complete   n     min   max   empty   n_unique 
    ## ---------  --------  ---------  ----  ----  ----  ------  ---------
    ## id         0         866        866   4     4     0       866      
    ## 
    ## Variable type: numeric
    ## 
    ## variable   missing   complete   n     mean      sd       p0        p25       median    p75       p100      hist     
    ## ---------  --------  ---------  ----  --------  -------  --------  --------  --------  --------  --------  ---------
    ## x          0         866        866   2434.35   252.64   1836.98   2243.7    2428.66   2642.56   2945.71   ▁▃▆▇▇▅▆▃ 
    ## y          0         866        866   1913      505.08   1027.97   1474.03   1904.25   2315.19   2871.54   ▆▇▇▇▇▆▆▅

Software details
----------------

Here the version information about R, the OS and attached or loaded packages for this project:

    ## R version 3.4.3 (2017-11-30)
    ## Platform: x86_64-pc-linux-gnu (64-bit)
    ## Running under: Ubuntu 16.04.3 LTS
    ## 
    ## Matrix products: default
    ## BLAS/LAPACK: /opt/intel/compilers_and_libraries_2017.5.239/linux/mkl/lib/intel64_lin/libmkl_gf_lp64.so
    ## 
    ## locale:
    ##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
    ##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
    ##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
    ##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
    ##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
    ## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## other attached packages:
    ## [1] bindrcpp_0.2 dplyr_0.7.4  jsonlite_1.5 pacman_0.4.6
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] Rcpp_0.12.15     knitr_1.20       bindr_0.1        magrittr_1.5    
    ##  [5] tidyselect_0.2.4 R6_2.2.2         rlang_0.2.0      highr_0.6       
    ##  [9] stringr_1.3.0    skimr_1.0.1      tools_3.4.3      packrat_0.4.8-1 
    ## [13] htmltools_0.3.6  yaml_2.1.17      rprojroot_1.3-2  digest_0.6.15   
    ## [17] assertthat_0.2.0 tibble_1.4.2     tidyr_0.8.0      purrr_0.2.4     
    ## [21] glue_1.2.0       evaluate_0.10.1  rmarkdown_1.9    stringi_1.1.6   
    ## [25] compiler_3.4.3   pander_0.6.1     pillar_1.2.1     backports_1.1.2 
    ## [29] pkgconfig_2.0.1

The MIT License
---------------

Copyright (c) 2017, Datawheel

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
