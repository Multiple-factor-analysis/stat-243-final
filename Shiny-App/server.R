


function(input, output,session) {
  output$plot<-renderPlot({
    if (input$plot_ob=="a"){
      plot_eigen(review)
    }else if (input$plot_ob=="b"){
      plot_common_factor(review)
    }else if(input$plot_ob=="c"){
      plot_partial_factor(review,dim_plot=c(input$dim_1,input$dim_2))
    }else if(input$plot_ob=="d"){
      plot_partial_factor_loading(review,dim_plot=c(input$dim_1,input$dim_2))
    }else if(input$plot_ob=="e"){
      plot.boostrap_ratio(review,10)
    }else{
      plot.boostrap_conf(review,10)
      
    }
  })
}