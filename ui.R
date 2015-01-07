library(shiny)
library(shinyGlobe)

shinyUI(  
  tagList(  
    titlePanel("International Students Studying in the US and US Students Studying Abroad"),
    globeOutput("globe"),    
    div(id="info", tagList(
      includeHTML('help.html'),
      radioButtons("select", 
                   label = h3(" "), 
                   choices = list("2013-14 International Students" = 1,                                                  
                                  "2012-13 US Students Studying Abroad" = 2), selected = 1)
    ))
))