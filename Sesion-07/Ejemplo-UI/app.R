# Paso 1: 
library(shiny)

# Paso 2: 
ui <- fluidPage()

# Paso 3: 
server <- function(input,output){ }

# Paso 4: 
shinyApp(ui, server)


# Adding titlePanel and sideBarLayout to a fluidPage
# Then adding sidebarPanel and mainPanel to the sidebarLayout

ui <- fluidPage(
  titlePanel('Hola Mundo'),
  
  sidebarLayout(sidebarPanel('Panel Lateral'), 
                mainPanel('Panel Principal') 
                )
)

server <- function(input,output){
  
}

shinyApp(ui, server)


# Example of html objects

ui <- fluidPage(
  titlePanel(h1('title1', align = 'center')),
  sidebarLayout(position = "right",
                sidebarPanel(p('Esto es un párrafo'),
                             h2('title2')),
                mainPanel('Panel Principal')
  )
)
server <- function(input, output) {
}
shinyApp(ui = ui, server = server)


