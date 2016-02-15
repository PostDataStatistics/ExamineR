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

# uncomment the next line if you have not installed the package "exams"
# only needed once
# install.packages("exams")

# let know the code where it is to set the working directory
odir = getwd()
(tempDir=paste(odir,"/temp",sep=""))

# load the library "exams"
library("exams")

## Set the language code for your exam: "es" = spanish, "en"= english  
language = "en"

# load templates for the exam and the answers

(templateExam=paste("PostData-Exam-",language,"-",sep="",collapse=""))
(templateAnswer=paste("PostData-Answer-",language,"-",sep="",collapse=""))

# use the desired number quizzes, for instance 
nameFile=c("000001", "01010101", "020003", "020203", "020602", "03010202", "03020201", "040104", "04030201","050301", "06060302", "060803")
    
(UnExamen=as.character(paste(nameFile,".Rnw",sep="")))

# Exam in PDF format
 exams(UnExamen, dir=odir, template=c(templateExam,templateAnswer), n=3)

# Quiz in HTML format, nncomment the next line
# exams2html(UnExamen,dir=dirTrabajo,n=1,name=nameFile,mathjax=TRUE)

#     
# Quiz in XML format ready for MOODLE, uncomment the next two lines
# library("tth")
# exams2moodle(file = UnExamen, n=7,name="moodle", nsamp = 5)

# Sometimes, it takes some time to compile the quizzes, 
# the process will be finished when you see number pi
pi
        