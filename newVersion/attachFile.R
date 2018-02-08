require(base64enc, quietly = TRUE)

embedFile = function(filename = stop("'filename' must be specified"), filePath = "./", textHTML = "Link to file: "){
  #(divname = paste(sample(LETTERS), collapse=""))
  (divname = paste(filename, collapse=""))
  (uri = dataURI(file = paste0(filePath, filename, collapse = "") ))
  cat("<a style='text-decoration: none' id='",divname,"'></a>
      <script>
      var a = document.createElement('a');
      var div = document.getElementById('",divname,"');
      div.appendChild(a);
      a.setAttribute('href', '",uri,"');
      a.innerHTML = '",textHTML ,"' + ' ",filename,"';
      if (typeof a.download != 'undefined') {
      a.setAttribute('download', '",filename,"');
      }else{
      a.setAttribute('onclick', 'confirm(\"Your browser does not support the download HTML5 attribute. You must rename the file to ",filename," after downloading it (or use Chrome/Firefox/Opera). \")');
      }
      </script>",
      sep="")
}

attachfile <- function(file, latex = NULL) {
  if(is.null(latex)) latex <- match_exams_call() %in% c("exams2pdf", "exams2nops")
  file <- if(latex) {
    sprintf("\\textattachfile{%s}{\\textcolor{blue}{\\tt %s}}", file, file) 
  } else {
    embedFile(filename = file)
  }
  return(file)
}

