library(shiny)

ui <- fluidPage(
  houses <- list(`Utrecht` = list("jan willem 2", "hoge weide 212", "kaplanlaan 44"), `Zeist` = list("kattenmie 2", "paardenstraat 20")),
  selectInput("house", "Your house is", choices = houses)
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)