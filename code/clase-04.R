## clase-04: leer/escribir conjuntos de datos
## update: 12-02-2024
## R version 4.2.3 (2023-03-15)

## limpiar entorno
rm(list=ls()) 

## instalar/llamar pacman
require(pacman)

## usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(rio, # función import/export: permite leer/escribir archivos desde diferentes formatos. 
       skimr, # funcion skim: describe un conjunto de datos
       janitor, # contiene conjuntos de datos.
       dplyr) # renombar variables

## verificar directorio
getwd()
list.files()


## READ API
browseURL("https://www.datos.gov.co/Educaci-n/Resultados-nicos-Saber-Pro/u37r-hjmu")
db = import("https://www.datos.gov.co/resource/u37r-hjmu.json?estu_cod_depto_presentacion=11")
export(db,"data.xlsx")
