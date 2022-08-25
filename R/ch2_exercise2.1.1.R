library(shiny)

ui <- fluidPage(
  textInput("name", "", placeholder = "Your")
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)