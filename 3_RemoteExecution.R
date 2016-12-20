# We can do local things remotely

Sys.getenv("COMPUTERNAME")

library(parallel)
detectCores()

3 + 3

add <- function(x, y) {
    x + y
}
add(3, 4)

plot(mtcars)
plot(iris)

# Run Shiny app on the server

setwd("xlt")
library(shiny)
runApp()