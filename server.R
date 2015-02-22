
bmi <- function(height,weight){
        
        bmi <- ((weight)/(height)^2)
        return (bmi)

}

category <- function(bmi) {
        if (bmi < 18.5) "underweight"
        else if (bmi > 25) "overweight"
        else "normal"
}




shinyServer(
        function(input, output) {
               
                
                output$inputValue1 <- renderPrint({input$height})
                output$inputValue2 <- renderPrint({input$weight})
                output$bmi <- renderPrint({bmi(input$height,input$weight)})
                category <- renderPrint({category(output$bmi)})
        }
)

