shinyUI(fluidPage(
  #titlePanel("Stat Selector"),
  br(),
  sidebarPanel(
    h4("Enter minimum values:"),
    sliderInput("HR", label = "Home Runs", min = min(bat14$HR), max = max(bat14$HR),
                value = 20, step = 1),
    sliderInput("RBI", label = "RBIs", min = min(bat14$RBI), max = max(bat14$RBI),
                value = 75, step = 1),
    sliderInput("RUNS", label = "Runs Scored", min = min(bat14$R), max = max(bat14$R),
                value = 75, step = 1),
    sliderInput("SB", label = "Stolen Bases", min = min(bat14$SB), max = max(bat14$SB),
                value = 10, step = 1)

  ),
  
  mainPanel(
    dataTableOutput("table")

  )

  
))