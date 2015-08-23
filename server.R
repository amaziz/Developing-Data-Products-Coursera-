library(shiny) 
library(graphics)
data(UCBAdmissions)

shinyServer(function(input, output) {
        
        output$ogender <- renderPrint({input$gender})
        output$oadmittance <- renderPrint({input$admittance}) 
        output$odepartments <- renderPrint({input$departments})
        output$oplot <- renderPlot({
                mosaicplot(
                        UCBAdmissions[{input$admittance},{input$gender},{input$departments}], 
                        main ="", color = "pink"
                        )
                mtext(expression(bold("Student admissions at UC Berkeley")),
                      outer = TRUE, cex = 5)
                
        })
       
        
})