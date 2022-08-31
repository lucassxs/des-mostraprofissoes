library(shiny)
library(irtoys)


my_function <- source("~\\pessoal\\des-mostraprofissoes\\tri_mostraprofissoes.R")

#ui shiny
ui <- fluidPage(
  titlePanel("Função"),
  numericInput("num1", "1. Na cama, eu frequentemente sinto frio nos pés.", value = "", min = 0, max = 1),
  numericInput("num2", "2. Eu frequentemente desço subo as escadas de dois em dois degraus.", value = "", min = 0, max = 1),
  numericInput("num3", "3. Eu acho que me daria bem em um time de basquete devido a minha altura.", value = "", min = 0, max = 1),
  numericInput("num4", "4. Como policial, eu impressionaria muito.", value = "", min = 0, max = 1),
  numericInput("num5", "5. Na maioria dos carros eu me sinto desconfortável.", value = "", min = 0, max = 1),
  numericInput("num6", "6. Eu literalmente olho para meus colegas de cima para baixo.", value = "", min = 0, max = 1),
  numericInput("num7", "7. Você é capaz de pegar um objeto no alto de um armário, sem usar escada?", value = "", min = 0, max = 1),
  numericInput("num8", "8. Você abaixa quando vai passar por uma porta?", value = "", min = 0, max = 1),
  numericInput("num9", "9. Você consegue guardar a bagagem no porta-malas do avião/ônibus?", value = "", min = 0, max = 1),
  numericInput("num10", "10. Você regulava o banco do carro para trás?", value = "", min = 0, max = 1),
  numericInput("num11", "11. Normalmente quando você está andando de carona lhe oferecem o banco da frente?", value = "", min = 0, max = 1),
  numericInput("num12", "12. Quando você e várias pessoas vão tirar fotos, formando-se três fileiras, onde
ninguém ficará agachado, você costuma ficar atrás?", value = "", min = 0, max = 1),
  numericInput("num13", "13. Você tem dificuldade para se acomodar no ônibus?", value = "", min = 0, max = 1),
  numericInput("num14", "14. Em uma fila, por ordem de tamanho, você é sempre colocado atrás?", value = "", min = 0, max = 1),
  actionButton("Submit", "RunFunction"),
  tableOutput("result")
  
  
)

server <- function(input, output){
  result <- eventReactive(input$Submit,
                          {my_function(input$num1, input$num2,input$num3,input$num4,input$num5,input$num6,input$num7,input$num8,input$num9,input$num10,input$num11,
                                       input$num12,input$num13,input$num14)})
  
  
  output$result <- renderTable(
    {result()}
  )
}

shinyApp(ui, server)