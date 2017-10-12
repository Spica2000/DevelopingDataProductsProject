library(shiny)

shinyUI(fluidPage(
    titlePanel("ALISA: Stock Price Forecasting App"),
    
    sidebarLayout(position = "left",
                  sidebarPanel(
                      h2("Instructions"),
                      p("Alisa uses Stock data from Google Finance"),
                      p("You can choose the start date and the end date"),
                      p("The forecasting is made with exponential model"),
                      
                      br(),
                      h3("Tell Alisa the ticker"),
                      textInput("symb", "symbol", "GOOGL"),
                      
                      br(),
                      h3("Select dates"),
                      dateRangeInput("dates", 
                                     "Date range",
                                     start = "2008-01-01", 
                                     end = as.character(Sys.Date())),
                      
                      br(),
                      h3("Select an exponential model"),
                      radioButtons("sm", "pick one model:",
                                         c("SimpleExponentialModel" = 1,
                                           "DoubleExponentialModel" = 2,
                                           "TripleExponentialModel" = 3), selected = 1),
                      
                      br(),
                      
                      h2("What Alisa can tell you"),
                      p("Decomposition of the time series data is presented on Fig. 1. Decomposing a time series means separating it into its constituent components, which are usually a trend component and an irregular component, and if it is a seasonal time series, a seasonal component."),
                      p("Alisa compares the fitting curve (red line) to the original data curve (blue line) by using different models (fig 2.)"),
                      p("On fig 3. a predicted three future values are shown"),
                      p("DON'T call your brocker right now!"),
                      
                      br(),
                      
                      submitButton("submit")
                      
                      
                  ),
                  
                  mainPanel(
                      plotOutput("plot1"),
                      plotOutput("plot2"),
                      plotOutput("plot3")
                  )
    )
))