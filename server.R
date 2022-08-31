server <- function(input, output){
  result <- eventReactive(input$Submit,
                          {my_function(input$num1, input$num2,input$num3,input$num4,input$num5,input$num6,input$num7,input$num8,input$num9,input$num10,input$num11,
                                       input$num12,input$num13,input$num14)})
  
  
  output$result <- renderTable(
    {result()}
  )
}