install.packages("shiny")
library(shiny)
library(RJSONIO)
library(geojsonio)
library(RCurl)
library('ggplot2')
library(jsonlite)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      radioButtons("dist", "Visualizations:",
                   c("1" = "1vis",
                     "2" = "2vis",
                     "3" = "3vis",
                     "4" = "4vis",
                     "5" = "5vis",
                     "6" = "6vis"))
    ),
    mainPanel(
      tabsetPanel(id = "tabs",
                  tabPanel("1vis", "1 visualization"),
                  tabPanel("2vis", "2 visualization"),
                  tabPanel("3vis", "3 visualization"),
                  tabPanel("4vis", "4 visualization"),
                  tabPanel("5vis", "5 visualization"),
                  tabPanel("6vis", "6 visualization")
      ),
      plotOutput("distPlot")
    )
  )
)
server <- function(input, output, session) {
  output$distPlot <- renderPlot({
    if (input$dist == "1vis") updateTabsetPanel(session = session,inputId = "tabs",selected = "1vis")
    else if(input$dist == "2vis") updateTabsetPanel(session = session,inputId = "tabs",selected = "2vis")
    else if(input$dist == "3vis") updateTabsetPanel(session = session,inputId = "tabs",selected = "3vis")
    else if(input$dist == "4vis") updateTabsetPanel(session = session,inputId = "tabs",selected = "4vis")
    else if(input$dist == "5vis") updateTabsetPanel(session = session,inputId = "tabs",selected = "5vis")
    else if(input$dist == "6vis") updateTabsetPanel(session = session,inputId = "tabs",selected = "6vis")
  })
}
shinyApp(ui, server)
