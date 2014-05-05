library(shiny)
shinyServer(function(input, output) {

  
  output$googleVismerged = renderGvis({
    df=statewisemelt[statewisemelt$variable==input$char1,]
    bar=gvisBarChart(df[order(df$value),],
                             "State","value",
                 options=list(height=800,fontSize=12,legend="none"))
    geochart=gvisGeoChart(statewisemelt[statewisemelt$variable==input$char1,],
                          locationvar="State", colorvar="value",
                          options=list(region="US", displayMode="regions", 
                                       resolution="provinces",
                                       colorAxis="{colors:['#4daf4a','#fc8d62','red']}"
                                       ))
      
      gvisMerge(bar,geochart,horizontal=TRUE)
    })
    })
  