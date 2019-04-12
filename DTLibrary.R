library(DT)
library(shiny)
library(jsonlite)

data2 <- fromJSON(("https://raw.githubusercontent.com/WingFlier/InfovisProject/master/file.json"))
ui <- basicPage(
   DT::dataTableOutput("data2")
 )
 
 server <- function(input, output)
 {
   output$data2 = DT::renderDataTable({data2})
 }
 #note: files is too big
 shinyApp(ui, server)
 