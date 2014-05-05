library(shiny)
shinyUI(bootstrapPage(
  div(class="row",
      div(class="span4",
          selectInput("char1", "",
                      choices =levels(statewisemelt$variable)))),
  htmlOutput("googleVismerged")
))
