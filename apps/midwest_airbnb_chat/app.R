# ISA 401 Job Scout Chat: ask questions, get SQL, a table, or a chart back
library(querychat)
library(shiny)
library(bslib)

con = DBI::dbConnect(RSQLite::SQLite(), "data/midwest_airbnb.db")

client = ellmer::chat_openai(
  model  = "gpt-5.6-luna",
  params = ellmer::params(reasoning_effort = "none")
)

qc = querychat::querychat(
  con, "listings",
  client             = client,
  tools              = c("filter", "query", "visualize"),
  greeting           = "Ask me about 14,887 Airbnb listings in Chicago, Columbus, and the Twin Cities.",
  data_description   = "data/data_desc.md",
  extra_instructions = "data/extra_instructions.md"
)

# Custom app theme and layout
ui <- page_sidebar(
  title = "Midwest Airbnb Explorer",
  theme = bs_theme(
    version = 5,
    bootswatch = "minty"
  ),
  sidebar = qc$sidebar(),
  
  card(
    card_header("Explore Midwest Airbnb Listings"),
    p("Ask questions about Airbnb listings in Chicago, Columbus, and the Twin Cities.")
  ),
  
  card(
    card_header("About"),
    p("Data source: Inside Airbnb."),
    p("Chicago snapshot: 2026-07-20"),
    p("Columbus snapshot: 2026-07-23"),
    p("Twin Cities snapshot: 2026-07-21"),
    p("Built by Aliya Merchant")
  )
)

server <- function(input, output, session) {
  qc_vals <- qc$server()
  
  output$sql <- renderText({
    qc_vals$sql()
  })
}

shinyApp(ui, server)

