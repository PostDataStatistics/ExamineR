<<echo=FALSE, results=hide>>=
  ## DATA GENERATION
  ##  Bayes Theorem
  
  signifDig = 4  
solucion=0
while(is.na(solucion)|(abs(solucion)<0.00001)|(abs(solucion)>0.999)){
  
  (n=sample(3:5,1))
  (suceso=sample(2:n,1))
  
  numProb1 <- sample(1:30,n)
  denomProb1=sum(numProb1)
  prob1=signif(numProb1/denomProb1,4)
  numProb2 <- sample(1:30,n)
  maxNumProb2=max(numProb2)
  denomProb2=sample(maxNumProb2:(maxNumProb2+10),1)
  prob2=signif(numProb2/denomProb2,4)
  fracInt2latex=function(numer,denom){
    (step1=paste("\\frac{",numer,sep=""))
    (step2=paste(step1,"}{",sep=""))
    (step3=paste(step2,denom,sep=""))
    (step4=paste(step3,"}",sep=""))
    (step5=paste(step4,",",sep="",collapse=""))
    (step5bis=substr(step5,0,nchar(step5)-1))
  } 
  numerSolucion=numProb1[suceso]*numProb2[suceso]/(denomProb1*denomProb2)
  denomsolucion=sum(prob1*prob2)
  (sol=signif(numerSolucion/denomsolucion,digits=4))
  
}



write(fracInt2latex(numProb1,denomProb1),file=randomName[1])

write(fracInt2latex(numProb2,denomProb2),file=randomName[2])

#text1=fracInt2latex(numProb1,denomProb1)
#cat(text1)


## QUESTION STATEMENT GENERATION
if(language=='en'){
  question=paste0("
                  The events  $B_1,\\ldots,B_n$, with $n=",n,"$ are such that
                  \\begin{itemize}
                  \\item pairwise disjoint.
                  \\item The union of all of them is $\\Omega$, the sample stace.
                  \\end{itemize}
                  The probability of each event $B_i$ is, respectively
                  
                  \\[\\left(\\input{",randomName[1],"}\\right)\\]
                  
                  and the conditional probalities $P(A|B_1),\\ldots,P(A|B_n)$ are 
                  \\[\\left(\\input{",randomName[2],"}\\right)\\]
                  Calculate the probability $P(A)$ with ",signifDig," significant digits.
                  ")
  
  answer=paste0("The answer is ", sol)
  
}else if(language=='es'){
  question=paste0("
                  Los sucesos $B_1,\\ldots,B_n$, donde $n=",n,"$ tienen estas propiedades:
                  \\begin{itemize}
                  \\item Son incompatibles dos a dos.
                  \\item Su uni\\'on es $\\Omega$, el espacio muestral completo.
                  \\end{itemize}
                  Adem\'as las probabilidades $P(B_1),\\ldots,P(B_n)$ son:
                  \\[\\left(
                  \\input{",randomName[1],"}
                  \\right)\\]
                  Mientras que las probabilidades condicionadas $p(A|B_1),\\ldots,p(A|B_{",n,"})$ son:
                  \\[\\left(
                  \\input{",randomName[2],"}
                  \\right)\\]
                  Calcula la probabilidad $P(B_{",suceso,"}|A)$. Utiliza 4 cifras significativas en tu respuesta.
                  ")

answer=paste0("La respuesta es ", sol)


}

cat(question)

@
  
  \begin{question}
<<echo=False, results=tex>>=
  cat(paste(question,collapse=""))
@
  \end{question}

\begin{solution}
<<echo=False, results=tex>>=
  cat(paste(answer,collapse=""))
@
  \end{solution}


%% META-INFORMATION
%% \extype{num}
%% \exsolution{\Sexpr{sol}}
%% \exname{Prediction}
%% \extol{0.00001}
