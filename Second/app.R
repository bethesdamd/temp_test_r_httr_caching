# Experiment to see how Shiny App handles getting data from 
# a remote CSV file, how caching of that data is handled, etc.

library(shiny)
library(data.table)
library(curl)

shinyApp(
  ui = fluidPage(
    fluidRow(
      column(12,
        tableOutput('table')
      )
    )
  ),
  server = function(input, output) {
      # Read from local csv file:
      # setwd("/Users/david/temp_test_r_httr_caching/Second/")
      # names <- read.csv(file = 'names.csv')
      
      # Read from https:
      remote_url <- 'https://raw.githubusercontent.com/bethesdamd/temp_test_r_httr_caching/master/data.csv'
      remote_data <- fread(remote_url)  # uses data.table library
      output$table <- renderTable(remote_data)
  }
)