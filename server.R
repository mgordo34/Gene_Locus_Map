#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(dplyr)
library(gggenes)  

library("shiny")
shinyServer(
    function(input,output,session){
        
        Data = reactive({
            if (input$submit > 0) {
                df <- data.frame(molecule=c(input$x, input$x), Gene=c(input$a, input$e),Start=c(input$b,input$f), End=c(input$c,input$g),strand=c(input$d,input$h) )
                return(list(df=df))
            }
        })
        
        
        output$table <- renderTable({
            if (is.null(Data())) {return()}
            print(Data()$df)
        }, 'include.rownames' = FALSE
        , 'include.colnames' = TRUE
        , 'sanitize.text.function' = function(x){x}

        )
        
        
        output$myplot <- renderPlot({
          if (is.null(Data())) {return()}
          df1 <- Data()$df
          i1 <- df1$strand == "1"
          df1[i1, c("Start", "End")] <- df1[i1, c("End", "Start")]
          a <- df1 %>%
            
            ggplot(aes(xmin = Start, xmax = End, y = molecule, fill = Gene, forward=strand, label=Gene)) +
            geom_gene_arrow() + 
            geom_gene_label() +
            facet_wrap(~ molecule, scales = "free", ncol = 1) +
            scale_fill_brewer(palette = "Set3") +
            theme_genes() + theme(legend.position="top", text = element_text(size=20), legend.title = element_blank(), axis.title = element_blank())
          return(a)
      
          
          
        })

})  

