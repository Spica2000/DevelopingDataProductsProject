Developing Data Products Course Project Pitch Presentation
========================================================
author: Vadim
date: October, 8 2017
autosize: true

Background
========================================================

This presentation will tell you about the data analysing application which was built using R on Shiny platform.

You can access the app here:
https://spica2000.shinyapps.io/alisa/


About the application
========================================================

The app is called "Alisa" and named after Lewis Carroll's famous character.

Alisa will guide you to the deep and mystery world of stock price forecasting.

What Alisa basically do:

1. She calls Google to obtain stock price information
2. Performs a decomposition of the data on trend, seasonal and irregular component
3. Calls guy named Holt Winters and asks him to magically forecast next year price.
4. Shows you the results.

DISCLAIMER
========================================================

You can ask Alisa about any ticker but use the results is totally at your own risk!

Under no circumstances Alisa will not be responsible for using the results of the Application.

Who is Halt Winters?
========================================================

Actually they are two distinct men like Sergei Brin of Google and James Hetfield of Metallica.

Charles C. Holt (21 May 1921 – 13 December 2010) was Professor Emeritus at the Department of Management at the McCombs School of Business at the University of Texas at Austin. He is well known for his contributions (and for the contributions of his student, Peter Winters) to exponential smoothing. [Wikipedia]

Winters is Peter R. Winters. That is all we know about him, sorry. 

Alisa uses this function to communicate those two:


```r
#fit <- function(data){
#        if (input$sm == 1){
#            fit <- HoltWinters(data, beta=FALSE, gamma=FALSE)
#        }else if (input$sm == 2){
#            fit <- HoltWinters(data, gamma=FALSE)
#        }else if (input$sm == 3){
#            fit <- HoltWinters(data)
#        }
```
