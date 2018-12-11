library(shiny)

navbarPage("Learning Survey",
           tabPanel("Absence by Score", 
                    sidebarLayout(      
                      
                      # Define the sidebar with one input
                      sidebarPanel(
                        selectInput("score", "Final Score:", 
                                    choices=colnames(read.csv("data/data.csv",row.names = 1))),
                        hr()
                      ),
                      
                      # Create a spot for the barplot
                      mainPanel(
                        plotOutput("absencePlot")  
                      )
                    )
           ),
           
           tabPanel("Q-Q Plot by Gender", sidebarLayout(      
             
             # Define the sidebar with one input
             sidebarPanel(
               selectInput("gender", "Gender:", 
                           choices=colnames(read.csv("data/data1.csv",row.names = 1))),
               hr()
             ),
             
             # Create a spot for the qqplot
             mainPanel(
               plotOutput("QQPlot")  
             )
             
           )
           )
           
)