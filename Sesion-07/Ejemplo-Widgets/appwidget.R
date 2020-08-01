# install.packages("shinythemes")

library(shiny)
library(shinythemes)

ui <- fluidPage(
  theme = shinytheme("flatly"),
  titlePanel(h1('Some Widgets', align = 'center')),
  sidebarLayout(position = "right",
                sidebarPanel(
                  sliderInput(inputId = "slider1", 
                              label = h6("Selecciona numero", align = 'center'),
                              min = 10, 
                              max = 20, 
                              value = c(12,16) )
                 ),
                 mainPanel(dateInput(inputId = "date",  
                                     label = h3("Selecciona una fecha"),  
                                     value = "2020-04-17"),
                           selectInput(inputId = "select", 
                                       label = h3("Select box"), 
                                       choices = list("Choice 1" = 1, 
                                                      "Choice 2" = 2,
                                                      "Choice 3" = 3,
                                                      "Choice 4" = 4), 
                                       selected = 1),
                           textInput(inputId = 'texto',
                                      label = '¿Cuál es tu nombre?',
                                      value = 'Ana') ,
                            submitButton(text = 'Finalizar') )
  )
)

server <- function(input, output) {
}

shinyApp(ui = ui, server = server)

# Agregar un textOutput en el sidebarPanel que tenga outputId = 'text_salida'

# En el server, van a tomar el numero resultante del sliderInput, van a revisar si el numero es igual a 5
# Si es igual a 5, imprimir 'Correcto', en otro caso imprimir 'Incorrecto'


# En el mail Panel
# Reto 1: Agregar un dateInput que empiece por default en 17/04/2020
# Reto 2: Agregar un selectInput con 4 opciones distintas
# Reto adicional: Agregar un numericInput
# Reto adicional 2: Buscar los shiny themes en google


