library(shiny)


shinyUI <- pageWithSidebar(
    headerPanel("Coursera : Developing Data Products: Project1: 
                This is a simple prediction algorithm which makes a linear regression model on height and body masss of ten different people. On the basis of this model we can make a prediction of height of the person on the basis of its body mass.
                There are three fields. 
                    First one asks for the name of the person. 
                    Second, asks for age. 
                    In third field body mass of person is to entered
                    Name and age is shown as output as it is.
                    To calculate height of the person on the basis of given body mass, a linear regression model is created for data collected for 10 persons."),
    sidebarPanel(
        textInput(inputId='name', label="Enter your name."),
        textInput(inputId='age', label="Enter your age"),
        numericInput("bodymass", "Enter bodymass.", 60, min = 50, max = 100, step = 5)
    ),
    mainPanel(
        h4('Name: '),
        textOutput('outName'),
        h4('Age : '),
        textOutput('outAge'),
        h4('Expected height is :'),
        verbatimTextOutput('outHeight')
    )
)