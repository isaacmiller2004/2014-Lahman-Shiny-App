shinyServer(function(input, output){
  
  
  output$table <- renderDataTable({
    t <- subset(bat14, HR >= input$HR & RBI >= input$RBI & R >= input$RUNS & SB >= input$SB)
    t
  })
  
})