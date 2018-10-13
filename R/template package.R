# ---- loading changes for testing

#install latest version from github
remove.packages("analysisTemplate")
devtools::install_github("Liz-T/stuff/analysisTemplate")
library(analysisTemplate)


# ---- create package for a markdown template (http://ismayc.github.io/ecots2k16/template_pkg/)

# with analysisTemplate for the name

devtools::create("packagename")
dir.create("packagename/inst/rmarkdown/templates/documentation/skeleton",
           recursive = TRUE)

# save a markdown template called 'skeleton.Rmd' into the skeleton folder

# save a file called template.yaml with the (adapted) content of the three lines below (uncommented) into the document folder
# the blank line is important
    # name: blarblar
    # description: description of blarblar
    #


# ---- Moving style to specific .css file (https://bookdown.org/yihui/rmarkdown/html-document.html#appearance-and-style)

# create new file ending .css, this should go in the skeleton folder I think?
# include the below in yaml heading in line with other html_document options
  # output:
  #   html_document:
  #     css: mystyles.css

# this works when I don't use toc, and also works along side templates.
# how do I get it working with a toc, does this info need to go into the .css file or do I need a custom theme too?


# ---- other resources

# https://rstudio.github.io/rstudio-extensions/rmarkdown_templates.html
# https://github.com/rstudio/rmarkdown/blob/master/inst/rmarkdown/templates/html_vignette/skeleton/skeleton.Rmd
# http://freerangestats.info/blog/2017/09/09/rmarkdown

# https://bookdown.org/yihui/rmarkdown/format-derive.html more about custom formats based on existing

# ----
  # this worked but then lost all the other formatting coming from the theme

  options(rstudio.markdownToHTML =
            function(inputFile, outputFile) {
              require(markdown)
              markdownToHTML(inputFile, outputFile, stylesheet='analysis.css')
            }
  )

# I think what this is doing is bypassing the location and file knitr usually picks up the style from (in the R library rmarkdown package)
# and looks at this file instead.
# It also lost the other options avilable under the dropdown button for knit.


