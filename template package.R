# create package for markdown template

devtools::create("analysisTemplate")
dir.create("analysisTemplate/inst/rmarkdown/templates/documentation/skeleton",
           recursive = TRUE)

# save a markdown template into the skeleton folder
# save a text file with the below format into the skeleton folder, the blank line is important.

# name: blarblar
#

devtools::install("analysisTemplate")
library(analysisTemplate)
