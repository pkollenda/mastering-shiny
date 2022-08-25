library(shiny)
library(reactable)
library(reactablefmtr)

ui <- fluidPage(
  reactableOutput("table")
)

server <- function(input, output, session) {
  # output$table <- renderDataTable(mtcars, options = list(pageLength = 5, ordering = FALSE, searching = FALSE, search = FALSE, paging = FALSE))
  output$table <- renderReactable(reactable(mtcars, theme = fivethirtyeight()))
}

shinyApp(ui, server)