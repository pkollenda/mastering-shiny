library(shiny)

ui <- fluidPage(
  verbatimTextOutput("cars"),
  textOutput("greeting"),
  verbatimTextOutput("test"),
  verbatimTextOutput("model")
)

server <- function(input, output, session) {
  output$cars <- renderPrint(summary(mtcars))
  output$greeting <- renderText("Good morning!")
  output$test <- renderPrint(t.test(1:5, 2:6))
  output$model <- renderPrint(str(lm(mpg ~ wt, data = mtcars)))
}

shinyApp(ui, server)