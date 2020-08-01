# Reactiveness
library(shiny)

ui <- fluidPage(
  titlePanel("Server"),
  sidebarLayout(
      sidebarPanel(
          textInput(inputId ='textoentrada',
                           label = 'Escribe algo')),
      mainPanel(
      textOutput(outputId = 'textosalida')
    )))
  
server <- function(input, output) {
    output$textosalida <- renderText('Hola') 
}
shinyApp(ui = ui, server= server)




ui <- fluidPage(
  theme = shinytheme('flatly'),
  titlePanel(h1("Mi primer Shiny web App Calis", align = "center")),
  sidebarLayout(position = 'right',
                sidebarPanel(h6('Codigo utilizado', align = 'center'),
                             code("print('Hola Mundo')"),
                             strong('Nota: Ejecutar en R'),
                             'Fin del Proyecto',
                             sliderInput(inputId = "slider1",
                                         label = h6('Selecciona numero', align = 'center'),
                                         min = 10,
                                         max = 20,
                                         value = c(12,16)),
                             textInput(inputId = "textoentrada")),
                mainPanel(p("Mi proyecto se llama demoras extracción y consiste en determinar las demoras por equipo"),
                          br(),
                          p("Este es el segundo parrafo"),
                          em("calis"),
                          submitButton(text = "Finalizar"),
                          textInput(inputId = 'texto',
                                    label = '¿Cual es tu nombre?',
                                    value = 'Chava'),
                          dateInput(inputId = 'date1',
                                    label = "introduce la fecha",
                                    value = '2020-04-01'),
                          selectInput(inputId = 'data1',
                                      label = 'selecciona una opcion',
                                      choices = list('choice 1' = 1,
                                                     "choice 2" = 2,
                                                     "choice 3" = 3,
                                                     "choice 4" = 4),
                                      selected = 1,
                                      multiple = FALSE),
                          numericInput(inputId = "data2",
                                       label = 'selecciona una opcion',
                                       value = 1),
                          textOutput(outputId = "textosalida")
                )
  )
)
