rm(list=ls())
library("exams")
# exams_skeleton(markup = "markdown", encoding = "UTF-8",
#                writer = c("exams2html", "exams2pdf", "exams2moodle"))

language="es"
seedValue = 2018
exercises = c("01000001.Rmd", "01000002.Rmd",  
              "01000101.Rmd", "01000102.Rmd", 
              "01000201.Rmd", "01000202.Rmd",
              "01010201.Rmd", "01010202.Rmd",
              "050101.Rmd",  "050201.Rmd", "050301.Rmd")

source("attachFile.R")

set.seed(seedValue)

if(language == "en"){
  exams2pdf(file = exercises,
            solution=TRUE, 
            template = c("plain.tex", "solution.tex"))
} else if(language == "es")  {
  exams2pdf(file = exercises, 
            solution=TRUE, 
            template = c("plain_es.tex", "solution_es.tex"))
}

set.seed(seedValue)
exams2html(file = exercises, mathjax = TRUE, solution = TRUE, dir = ".",
           template = c("plain_es.html"))
