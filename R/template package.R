# create package for markdown template

devtools::create("analysisTemplate")
dir.create("analysisTemplate/inst/rmarkdown/templates/documentation/skeleton",
           recursive = TRUE)

# save a markdown template into the skeleton folder
# save a text file with the below format into the skeleton folder, the blank line is important.
# name: blarblar
#

# ----

#install from github
  devtools::install_github("Liz-T/stuff/analysisTemplate")
#  remove.packages("analysisTemplate")

# ----

# .css specific file
# include this in a specfic file rather than take up spac ein template, include this line in heading under output
# css: mystyles.css

# this should go in the skeleton folder

# ----

# resources used
# https://rstudio.github.io/rstudio-extensions/rmarkdown_templates.html
# https://github.com/rstudio/rmarkdown/blob/master/inst/rmarkdown/templates/html_vignette/skeleton/skeleton.Rmd

