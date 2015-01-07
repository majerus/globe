library(shiny)
library(shinyGlobe)

shinyServer(function(input, output, session) {

population <- readRDS("open_doors_geocoded.Rds")
population1 <- readRDS("open_doors_abroad_geocoded.Rds")
    
output$globe <- renderGlobe({
  
   if (is.null(input$select))
      return(NULL)

   if (input$select == 1) {
      return(population)
  
    } else if (input$select == 2) {
      return(population1)
    }
  })
})