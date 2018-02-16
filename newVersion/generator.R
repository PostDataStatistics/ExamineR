rm(list=ls())
library("exams")
# exams_skeleton(markup = "markdown", encoding = "UTF-8",
#                writer = c("exams2html", "exams2pdf", "exams2moodle"))

language="es"
includeSolution = TRUE
seedValue = 2018

exercises = c("01000001.Rmd", "01000002.Rmd",  
              "01000101.Rmd", "01000102.Rmd", 
              "01000201.Rmd", "01000202.Rmd",
              "01000301.Rmd",
              "01010001.Rmd", "01010002.Rmd",
              "01010101.Rmd", "01010102.Rmd",
              "01010201.Rmd", "01010202.Rmd",
              "01020101.Rmd", "01020102.Rmd", "01020103.Rmd", "01020104.Rmd",
              "01020201.Rmd", "01020202.Rmd", "01020203.Rmd", "01020204.Rmd",
              "01020301.Rmd", "01020302.Rmd", "01020303.Rmd", "01020304.Rmd",
              "01020401.Rmd", "01020402.Rmd", "01020403.Rmd", "01020404.Rmd",  
              "01030401.Rmd", "01030402.Rmd",
              "050101.Rmd",  "050201.Rmd", "050301.Rmd")

source("attachFile.R")

set.seed(seedValue)

if(language == "en"){
  exams2pdf(file = exercises,
            solution = includeSolution, 
            template = c("plain.tex", "solution.tex"))
} else if(language == "es")  {
  exams2pdf(file = exercises, 
            solution = includeSolution, 
            template = c("plain_es.tex", "solution_es.tex"))
}

set.seed(seedValue)

if(language == "en"){
  exams2html(file = exercises, mathjax = TRUE, 
             solution = ifelse(includeSolution, "<h4>Solution</h4>", FALSE), 
             dir = ".")
} else if(language == "es")  {
  exams2html(file = exercises, mathjax = TRUE, 
             question = "<h4>Pregunta</h4>", 
             solution = ifelse(includeSolution, "<h4>Respuesta:</h4>", FALSE), 
             dir = ".", template = c("plain_es.html"))
}

