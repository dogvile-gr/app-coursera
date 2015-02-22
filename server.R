
bmi <- function(height,weight){(weight*0.45455/(0.0254*height)^2)}

shinyServer(
        function(input, output) {

                output$inputValue <- renderPrint({input$height;input$weight})
                output$bmi <- renderPrint({bmi(input$height,input$weight)})
        }
)

