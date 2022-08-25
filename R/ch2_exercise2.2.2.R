library(shiny)

ui <- fluidPage(
  plotOutput("plot", width = "400px")
)

server <- function(input, output, session) {
  output$plot <- renderPlot(plot(1:5), res = 96, width = 700, height = 300, alt = "A scatterplot with five points.")
}

shinyApp(ui, server)