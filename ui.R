library(shiny)

shinyUI(fluidPage(
    titlePanel("Prediction of Car's mpg"),
    sidebarLayout(
        sidebarPanel(
            p("Please fill your car's specificatoins"),
            selectInput("am", "Transmission(0 = automatic, 1 = manual)", 
                        choices = mtcars$am),
            selectInput("cyl", "Number of cylinders", 
                        choices = mtcars$cyl),
            sliderInput("wt", "Weight (1000 lbs)", 
                        min = 1, max = 6, step = 0.5, value = 3),
            sliderInput("hp", "Gross horsepower", 
                        min = 50, max = 350, step = 10, value = 125)
        ),
        mainPanel(
            h3("Car's expected mpg is:"),
            h4(textOutput("mpgPred")),
            p("The prediction is based on a multiple linear regression from the mtcars data set.")
        )
    )
)
)