library(shiny)

#example function
my_function <- function(a, b, c) {
  data.frame(a = a, b = b, c = c)
}

ui <- fluidPage(
  titlePanel("Function Output"),
  numericInput("a", "a", value = ""),
  numericInput("b", "b", value = ""),
  textInput("c", "c", value = ""),
  actionButton("Submit", "RunFunction"),
  tableOutput("result")
)

server <- function(input, output) {
  result <- eventReactive(input$Submit, {
    my_function(input$a, input$b, input$c)
  })
  
  output$result <- renderTable({
    result()
  })
}

shinyApp(ui, server)