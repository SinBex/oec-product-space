# Open oec-product-space.Rproj before running this script

library(jsonlite)
library(dplyr)

subdir <- "hs92-sitc/"
scripts_dir <- paste0(subdir, "0-scripts/")
raw_dir <- paste0(subdir, "1-layouts-raw/")
d3plus1_dir <- paste0(subdir, "2-layouts-d3plus1/")
d3plus2_dir <- paste0(subdir, "3-layouts-d3plus2/")

try(dir.create(raw_dir))
try(dir.create(d3plus1_dir))
try(dir.create(paste0(d3plus2_dir)))

source(paste0(scripts_dir, "1-import.R"))
source(paste0(scripts_dir, "2-process.R"))
source(paste0(scripts_dir, "3-save.R"))
source(paste0(scripts_dir, "4-rearrange-for-d3plus2.R"))
