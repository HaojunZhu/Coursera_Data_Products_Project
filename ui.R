library(shiny)
library(caret)
shinyUI (
  pageWithSidebar (
    # Application title
    headerPanel ("Predict Your Vehicle's MPG"),
    
    sidebarPanel (
      sliderInput('cyl', 'Cylinders', 4, min = 4, max= 8, step = 1),
      sliderInput('disp', 'Displacement', 210, min = 70, max= 450, step = 10),
      sliderInput('horse', 'Horsepower', 100, min = 50, max= 230, step = 5),
      sliderInput('year', 'Year', value = 75, min = 70, max= 82, step = 1),
      sliderInput('accel', 'Acceleration', 15, min = 8, max= 24, step = 1),
      sliderInput('weight', 'Weight', 3000, min = 1613, max= 5140, step = 1),
      #numericInput('year', 'Year', 75, min = 70, max= 82, step = 1),
      sliderInput('origin', 'Origin', 2, min = 1, max= 3, step = 1)
    ),
    
    mainPanel (
      h3 ('Predicted MPG:'),
      textOutput("prediction")
    )
  )
)