library(shiny)

ui <- fluidPage(
  sliderInput("number", "Your number is", min = 0, max = 100, value = 0, step = 5, animate = TRUE)
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)