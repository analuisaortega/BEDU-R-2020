[`Estadística con R`](../Readme.md) > `Sesión 01: Propedéutico de R`

## Libreria dplyr

### OBJETIVO

Al final de el `Reto-07` serás capaz de:
- Leer un dataframe
- Identificar el tipo de cada columna

### REQUISITOS

1. Completar el prework
2. R versión 3.6.2 o mayor
3. R Studio versión 1.2.5033 o mayor 
4. Git Bash

### INSTRUCCIONES DEL RETO

- Haz un llamado a la libreria dplyr
- Lee el archivo [Metro_Interstate_Traffic_Volume.csv](../../Data/Metro_Interstate_Traffic_Volume.csv) y guardalo en df.traffic
- Ve la estructura del dataframe y los tipos de dato de cada columna
- Calcula el promedio de la columna traffic_volume y guardala en mean.traffic
- Selecciona solo las columnas weather_main y traffic_volume
- Cambia de nombre las columnas: weather_main a clima y traffic_volume a trafico
- Filtra a las observaciones donde la columna trafico sea mayor o igual a mean.traffic
- Guarda el dataframe filtrado como df.traffic.filter
- ¿Cuántos renglones y columnas tiene df.traffic.filter?
- Con df.traffic.filter, agrupa por clima y saca el min de trafico y max de trafico, guardalo en df.traffic.grouped
- Agrega una columna a df.traffic.grouped que sea la diferencia entre max y min del grupo
