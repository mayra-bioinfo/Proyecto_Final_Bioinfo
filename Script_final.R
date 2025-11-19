### vectores para MHC de los padres 
MHC_padre <- c("B*58:01", "B*13:01")
MHC_madre <- c("A*23:01", "A*29:02")

### Modelo de prediccion ###

predecir_MHC <- function(MHC_padre, MHC_madre, n_hijos = 1) {

##Validacion 
if(length(MHC_padre) !=2  |  length (MHC_madre) !=2) {
  stop("Cada progenitor debe tener exactamente 2 alelos")
}

### Simulacion de hijos ###
hijos <- list ()
for (i in 1:n_hijos){
  alelo_padre <- sample(MHC_padre, 1)
  alelo_madre <- sample(MHC_madre, 1)
  genotipo <- c(alelo_padre, alelo_madre)
  hijos[[i]] <- genotipo
}

### Resultados 
for (i in 1: length (hijos)) {
  cat ("hijo", i, ":", hijos [[i]][1], "+", hijos [[i]][2])
}

##Conteo de alelos 
todos_alelos <- unlist(hijos)
frecuencias <- table (todos_alelos)
cat("Frecuencia de alelos:")
print(frecuencias)

### Regresar los objetos ###

return(list(
  hijos = hijos,
  frecuencias = frecuencias 
)) 

}

### Prueba ###

sirve <- predecir_MHC(MHC_padre, MHC_madre, n_hijos = 3)



