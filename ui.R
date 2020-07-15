#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny) 
library(shinythemes)


shinyUI(
    fluidPage(
        
        titlePanel("Make a Gene Locus Map!")
        
             
          ,
        
        
        fluidRow( 
            column(12, textInput('x',"Name your project","")),
            column(2,
                textInput('a', "Gene 1","")
                ,
                textInput('b', "Start","")
                ,
                textInput('c', "End","")
                ,
                selectInput("d", "Forward (1) or Reverse (-1)", choices=c("1","-1"))),
            column(8,
                textInput('e', "Gene 2","")
                ,
                textInput('f', "Start","")
                ,
                textInput('g', "End","")
                ,
                selectInput("h", "Forward (1) or Reverse (-1)", choices=c("1","-1"))
                
            )
            
            
            
            
            
        )
        ,
        mainPanel(actionButton("submit","Submit"), uiOutput('table'),
            plotOutput('myplot')
      
    
                )
         
        )
    
)

