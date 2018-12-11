library(shiny)
library(car)


function(input, output) {
  
  # Fill in the spot we created for a plot
  output$absencePlot <- renderPlot({
    
    # Render a barplot
    barplot(read.csv("data/data.csv",row.names = 1)[,input$score], 
            main=input$score,
            names.arg=c("Once a week","Once every two weeks","Once a month","Once every two months","Never or almost never"),
            ylab="Number of Students",
            xlab="Freqence",
            col = "light blue")
  })
  output$QQPlot <- renderPlot({
    
    # Render a  Q-Q plot
    qqPlot(read.csv("data/data1.csv",row.names = 1)[,input$gender], 
           main=input$gender,
           ylab="final score")
  })
}