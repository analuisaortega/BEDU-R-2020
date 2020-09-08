install.packages("RMySQL")
install.packages("DBI")

library(RMySQL)
library(DBI)

# MyDataBase <- dbConnect(MySQL(), 
#                         user='User_DataBase', 
#                         password='Password_DB', 
#                         dbname='Name_DataBase', 
#                         host='Your hosting')

MyDataBase <- dbConnect(
                        drv = RMySQL::MySQL(),
                        dbname = "shinydemo",
                        host = "shiny-demo.csa7qlmguqrf.us-east-1.rds.amazonaws.com",
                        username = "guest",
                        password = "guest")

dbListTables(MyDataBase)[2]

dbListFields(MyDataBase, 'Country')

DataDB <- dbGetQuery(MyDataBase, "select * from Country")

head(DataDB)

# Reto 1:
# Crear un dataframe que sea un ranking de continent por population (mayor a menor)
dbGetQuery(MyDataBase, "select Continent, sum(population) from Country group by 1 order by 2 desc")

# Reto 2:
# Crear un dataframe donde por Name, hagan el maximo de GNP, 
# promedio de population, minimo de life expectancy
# donde Independence Year sea mayor a 1950
# 1. Hacerla con SQL
# 2. Replicarla con R (dplyr)

df <- dbGetQuery(MyDataBase, "select Name, max(GNP), avg(Population), min(LifeExpectancy) from Country where IndepYear > 1950")
df

library(dplyr)
dbGetQuery(MyDataBase, 'SELECT * FROM Country') %>% filter(IndepYear > 1950) %>% summarise(max(GNP), mean(Population), min(LifeExpectancy))
