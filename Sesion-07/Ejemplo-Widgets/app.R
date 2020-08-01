# Parte 3: Widgets

library(shiny)

ui <- fluidPage(
  titlePanel(h1('Some Widgets', align = 'center')),
  sidebarLayout(position = "right",
                sidebarPanel(  textInput("text", h3("Text input"), 
                                         value = "Enter text...")
                ),
                mainPanel( submitButton("Submit"),
                           actionButton("action", "Action"), 
                           checkboxInput("checkbox", "Choice A", value = TRUE),
                           selectInput("select", h3("Select box"), 
                                       choices = list("Choice 1" = 1, "Choice 2" = 2,
                                                      "Choice 3" = 3), selected = 1)
                )
  )
)

server <- function(input, output) {
}

shinyApp(ui = ui, server = server)



