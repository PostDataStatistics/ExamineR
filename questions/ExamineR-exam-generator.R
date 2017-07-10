################################################################################
# PostData Statistics: 
# Fernando San Segundo, Marcos Marva
# Web: www.postdata-statistics.com
# Mail: postdatastatistics@gmail.com        (secondary: marcos.marva@gmail.es)
################################################################################
################################################################################
# File to generate quizzes with the R Exams package (basic template)
# To run the code, press Ctrl+A (select all) Crtl+Intro (run selected code)
################################################################################

# clear the envirinment
rm(list=ls())
 
# uncomment the next line if you have not installed the package "exams". 
# only needed once 
# install.packages("exams")

# let know the code where it is to set the working directory
odir = getwd()
(tempDir=paste(odir,"/temp",sep=""))

# load the library "exams"
library("exams")

## Set the language code for your exam: "es" = spanish, "en"= english  
language = "es"

# load templates for the exam and the answers

(templateExam=paste("plain-attachfile",language,"-",sep="",collapse=""))
(templateAnswer=paste("PostData-Answer-",language,"-",sep="",collapse=""))

# use the desired number quizzes, for instance 
nameFile=c("lm-attachfile")
(UnExamen=as.character(paste(nameFile,".Rnw",sep="")))

# Exam in PDF format
exams2pdf(UnExamen, dir=odir, template=c(templateExam), n=1)

# Quiz in HTML format, uncomment the next line
# exams2html(UnExamen,dir=odir,n=1,name=nameFile,mathjax=TRUE)

# Quiz in XML format ready for MOODLE, uncomment the next two lines
# library("tth")
# exams2moodle(file = UnExamen, n=7,name="moodle", nsamp = 5)

# Sometimes, it takes some time to compile the quizzes, the process will be finished when you see number pi
pi
        