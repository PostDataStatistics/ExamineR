########################################################################
# PostData Statistics: 
# Un curso de introducci?n a la Estad?stica, pensado para principiantes
#
# Fernando San Segundo, Marcos Marv?
#
# Web: www.postdata-statistics.com
# Mail: postdatastatistics@gmail.com
########################################################################
# Fichero para generar cuestionarios de examen 
# usando el paquete exams de R
#
########################################################################



    rm(list=ls())
#     (dirTrabajo="D:/Dropbox/POSTDATA_2/ExamineR/2014-02/" )
#    setwd(dirTrabajo)
     odir=getwd()
    (dirTemporal=paste(odir,"/temp",sep=""))
  
    library("exams")

    ## Set the language code for your exam
    language='es'

    (templateExam=paste("PostData-Exam-",language,"-",sep="",collapse=""))
    (templateAnswer=paste("PostData-Answer-",language,"-",sep="",collapse=""))
        
    nameFile='03010401'
    
    (UnExamen=list(paste(nameFile,".Rnw",sep="")))
    
    # Para generar un pdf
    exams(UnExamen, dir=odir, template=c(templateExam,templateAnswer),n=1)
    
    # Para generar un fichero html
    #exams2html(UnExamen,dir=dirTrabajo,n=1,name=nameFile,mathjax=TRUE)
    
    # Para generar preguntas para Moodle. El primero es para pruebas.
    #exams2moodle(UnExamen,n=5,name=numeroFichero)
    #exams2moodle(UnExamen,n=200,name=nameFile)
  
    
    # A veces tarda, así que para ver fácilmente que ha acabado, ejecutamos.
    2*2
      
        