library(shiny)

getHeight <- function(mass) {
    height <- c(176, 154, 138, 196, 132, 176, 181, 169, 150, 175)
    bodymass <- c(82, 49, 53, 112, 47, 69, 77, 71, 62, 78)
    model <- lm(height ~ bodymass)
    intercept <- model$coefficients[1]
    slope <- model$coefficients[2]
    return(slope * mass + intercept)
}

shinyServer(
    function(input, output) {
        output$outName <- renderPrint({input$name})
        output$outAge <- renderPrint({input$age})
        output$outHeight <- renderText({getHeight(input$bodymass)})
    }
)