MHC_padre <- c("B*58:01", "B*13:01")
MHC_madre <- c("A*23:01", "A*29:02")

##Validacion 
if(length(MHC_padre) !=2  |  length (MHC_madre) !=2) {
  stop("Cada progenitor debe tener exactamente 2 alelos")
  }




