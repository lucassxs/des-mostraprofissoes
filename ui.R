#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.

# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  

    # Application title
    titlePanel("Teoria de Resposta ao Item"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
      sidebarPanel(),
      mainPanel(
        textInput("name", "Digite seu nome"),
        numericInput("num", "1. Na cama, eu frequentemente sinto frio nos pés.", value = 0, min = 0, max = 1),
        numericInput("num", "2. Eu frequentemente desço subo as escadas de dois em dois degraus.", value = 0, min = 0, max = 1),
        numericInput("num", "3. Eu acho que me daria bem em um time de basquete devido a minha altura.", value = 0, min = 0, max = 1),
        numericInput("num", "4. Como policial, eu impressionaria muito.", value = 0, min = 0, max = 1),
        numericInput("num", "5. Na maioria dos carros eu me sinto desconfortável.", value = 0, min = 0, max = 1),
        numericInput("num", "6. Eu literalmente olho para meus colegas de cima para baixo.", value = 0, min = 0, max = 1),
        numericInput("num", "7. Você é capaz de pegar um objeto no alto de um armário, sem usar escada?", value = 0, min = 0, max = 1),
        numericInput("num", "8. Você abaixa quando vai passar por uma porta?", value = 0, min = 0, max = 1),
        numericInput("num", "9. Você consegue guardar a bagagem no porta-malas do avião/ônibus?", value = 0, min = 0, max = 1),
        numericInput("num", "10. Você regulava o banco do carro para trás?", value = 0, min = 0, max = 1),
        numericInput("num", "11. Normalmente quando você está andando de carona lhe oferecem o banco da frente?", value = 0, min = 0, max = 1),
        numericInput("num", "12. Quando você e várias pessoas vão tirar fotos, formando-se três fileiras, onde
ninguém ficará agachado, você costuma ficar atrás?", value = 0, min = 0, max = 1),
        numericInput("num", "13. Você tem dificuldade para se acomodar no ônibus?", value = 0, min = 0, max = 1),
        numericInput("num", "14. Em uma fila, por ordem de tamanho, você é sempre colocado atrás?", value = 0, min = 0, max = 1),        fluidRow(
          actionButton("salve", "Salvar", class = "btn-salve")
        )
      )
    )
))
