rm(list=ls())
library("exams")
# exams_skeleton(markup = "markdown", encoding = "UTF-8",
#                writer = c("exams2html", "exams2pdf", "exams2moodle"))

language="es"
seedValue = 2018
exercises = c("010001.Rmd", "010002.Rmd",  
              "010101.Rmd", "010102.Rmd", 
              "010201.Rmd", "010202.Rmd",
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
