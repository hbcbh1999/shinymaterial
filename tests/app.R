library(shiny)
library(shinymaterial)

ui <-
  material_page(
    title = "Testing",
    nav_bar_color = 'red lighten-3',
    background_color = "white",
    material_side_nav(
      tags$h4("stuff"),
      background_color = "blue lighten-4"
    ),
    tags$div(
      class = "container",
      
      material_modal(
        modal_id = "example_modal",
        button_text = "Modal",
        title = "Example Modal Title",
        button_color = "red lighten-4",
        button_depth = 5,
        shiny::tags$p("Modal Content")
      ),
      
      material_tabs(
        tabs = c(
          "Example Tab 1" = "example_tab_1",
          "Example Tab 2" = "example_tab_2"
        ),
        color = "purple"
      ),
      material_tabs(
        tabs = c(
          "Example Tab 11" = "example_tab_11",
          "Example Tab 22" = "example_tab_22"
        ),
        color = "deep-purple"
      ),
      material_card(
        title = "Example Card",
        shiny::tags$h1("Card Content"),
        depth = 5
      ),
      # Button ------------------------------------------------------------------
      material_input(
        type = "button",
        input_id = "input_button1",
        label = "IButton"
      ),
      material_button(
        input_id = "button1",
        label = "Button"
      ),
      
      material_input(
        type = "button",
        input_id = "input_button2",
        label = "IButton",
        icon = "cloud",
        depth = 5,
        color = "blue"
      ),
      material_button(
        input_id = "button2",
        label = "Button",
        icon = "cloud",
        depth = 5,
        color = "blue lighten-4"
      ),
      # Checkbox ------------------------------------------------------------------
      material_input(
        type = "checkbox",
        input_id = "input_checkbox1",
        label = "Icheckbox"
      ),
      material_checkbox(
        input_id = "checkbox1",
        label = "checkbox"
      ),
      material_input(
        type = "checkbox",
        input_id = "input_checkbox2",
        label = "Icheckbox",
        initial_value = TRUE,
        color = "blue"
      ),
      material_checkbox(
        input_id = "checkbox2",
        label = "checkbox",
        initial_value = TRUE,
        color = "#ef5350"
      ),
      # Switch ------------------------------------------------------------------
      material_input(
        type = "switch",
        input_id = "input_switch1",
        label = "Iswitch",
        off_label = "Off",
        on_label = "On"
      ),
      material_switch(
        input_id = "switch1",
        label = "switch",
        off_label = "Off",
        on_label = "On"
      ),
      material_input(
        type = "switch",
        input_id = "input_switch2",
        label = "Iswitch",
        off_label = "Off",
        on_label = "On",
        initial_value = TRUE,
        color = "blue"
      ),
      material_switch(
        input_id = "switch2",
        label = "switch",
        off_label = "Off",
        on_label = "On",
        initial_value = TRUE,
        color = "#bbdefb"
      ),
      # Floating Button ------------------------------------------------------------------
      # material_input(
      #   type = "floating_button",
      #   input_id = "input_floating_button1"
      # )
      # material_floating_button(
      #   input_id = "floating_button1"
      # )
      # 
      # material_input(
      #   type = "floating_button",
      #   input_id = "input_floating_button2",
      #   icon = "cloud",
      #   depth = 5,
      #   color = "blue"
      # )
      # material_floating_button(
      #   input_id = "floating_button2",
      #   icon = "cloud",
      #   depth = 5,
      #   color = "blue"
      # ),
      # Number box ------------------------------------------------------------------
      material_input(
        type = "number_box",
        input_id = "input_number_box1",
        label = "input_number_box1",
        min_value = 5,
        max_value = 15,
        initial_value = 10
      ),
      material_number_box(
        input_id = "number_box1",
        label = "number_box1",
        min_value = 5,
        max_value = 15,
        initial_value = 10
      ),
      
      material_input(
        type = "number_box",
        input_id = "input_number_box2",
        label = "input_number_box2",
        min_value = 5,
        max_value = 15,
        initial_value = 10,
        color = "blue"
      ),
      material_number_box(
        input_id = "number_box2",
        label = "number_box2",
        min_value = 5,
        max_value = 15,
        initial_value = 10,
        color = "#bbdefb"
      ),
      
      # Text box ------------------------------------------------------------------
      material_input(
        type = "text_box",
        input_id = "input_text_box1",
        label = "input_text_box1"
      ),
      material_text_box(
        input_id = "text_box1",
        label = "text_box1"
      ),
      
      material_input(
        type = "text_box",
        input_id = "input_text_box2",
        label = "input_text_box2",
        color = "blue"
      ),
      material_text_box(
        input_id = "text_box2",
        label = "text_box2",
        color = "blue"
      ),
      # password box ------------------------------------------------------------------
      material_input(
        type = "password_box",
        input_id = "input_password_box1",
        label = "input_password_box1"
      ),
      material_password_box(
        input_id = "password_box1",
        label = "password_box1"
      ),
      
      material_input(
        type = "password_box",
        input_id = "input_password_box2",
        label = "input_password_box2",
        color = "red"
      ),
      material_password_box(
        input_id = "password_box",
        label = "password_box_red",
        color = "#ef5350"
      ),
      # material_floating_button(
      #   input_id = "example_floating_button",
      #   icon = "mode_edit",
      #   depth = 5,
      #   color = "red lighten-2"
      # ),
      # Radio buttons ------------------------------------------------------------------
      material_input(
        type = "radio-button",
        input_id = "input_example_radio_button1",
        label = "Radio Button",
        choices = c(
          "Cake" = "c",
          "Pie" = "p",
          "Brownie" = "b"
        )
      ),
      material_radio_button(
        input_id = "example_radio_button1",
        label = "Radio Button",
        choices = c(
          "Cake" = "c1",
          "Pie" = "p1",
          "Brownie" = "b1"
        )
      ),
      material_input(
        type = "radio-button",
        input_id = "input_example_radio_button2",
        label = "Radio Button",
        choices = c(
          "Cake" = "c2",
          "Pie" = "p2",
          "Brownie" = "b2"
        ),
        color = "blue"
      ),
      material_radio_button(
        input_id = "example_radio_button2",
        label = "Radio Button",
        choices = c(
          "Cake" = "c3",
          "Pie" = "p3",
          "Brownie" = "b3"
        ),
        color = "#bbdefb"
      ),
      # slider ------------------------------------------------------------------
      material_input(
        type = "slider",
        input_id = "input_example_slider1",
        label = "slider",
        min_value = 5,
        max_value = 15,
        initial_value = 10,
        color = "blue"
      ),
      material_slider(
        input_id = "example_slider1",
        label = "slider",
        min_value = 5,
        max_value = 15,
        initial_value = 10,
        color = "#bbdefb"
      ),
      # dropdown
      material_input(
        type = "dropdown",
        input_id = "input_example_dropdown1",
        label = "Drop down",
        choices = c(
          "Chicken" = "c1",
          "Steak" = "s1",
          "Fish" = "f1"
        ),
        selected = c("c"),
        multiple = FALSE
      ),
      
      material_dropdown(
        input_id = "example_dropdown1",
        label = "Drop down",
        choices = c(
          "Chicken" = "c2",
          "Steak" = "s2",
          "Fish" = "f2"
        ),
        selected = c("c"),
        multiple = FALSE,
        color = "#ef5350"
      ),
      # date picker -------------------------------------------------------------
      material_date_picker(
        input_id = "example_date_picker",
        label = "Date picker",
        color = 'purple'
      )
    )
  )





server <- function(input, output) {
  #button
  observeEvent(input$input_button1, {
    message(input$input_button1)
  })
  observeEvent(input$button1, {
    message(input$button1)
  })
  observeEvent(input$input_button2, {
    message(input$input_button2)
  })
  observeEvent(input$button2, {
    message(input$button2)
  })
  #checkbox
  observeEvent(input$input_checkbox1, {
    message(input$input_checkbox1)
  })
  observeEvent(input$checkbox1, {
    message(input$checkbox1)
  })
  observeEvent(input$input_checkbox2, {
    message(input$input_checkbox2)
  })
  observeEvent(input$checkbox2, {
    message(input$checkbox2)
  })
  #switch
  observeEvent(input$input_switch1, {
    message(input$input_switch1)
  })
  observeEvent(input$switch1, {
    message(input$switch1)
  })
  observeEvent(input$input_switch2, {
    message(input$input_switch2)
  })
  observeEvent(input$switch2, {
    message(input$switch2)
  })
  # floating button
  observeEvent(input$floating_button2, {
    message(input$floating_button2)
  })
  
  # Number box
  observeEvent(input$input_number_box1, {
    message(input$input_number_box1)
  })
  observeEvent(input$number_box1, {
    message(input$number_box1)
  })
  observeEvent(input$input_number_box2, {
    message(input$input_number_box2)
  })
  observeEvent(input$number_box2, {
    message(input$number_box2)
  })
  #text box
  observeEvent(input$input_text_box1, {
    message(input$input_text_box1)
  })
  observeEvent(input$text_box1, {
    message(input$text_box1)
  })
  observeEvent(input$input_text_box2, {
    message(input$input_text_box2)
  })
  observeEvent(input$text_box2, {
    message(input$text_box2)
  })
  # floating button
  observeEvent(input$example_floating_button, {
    message(input$example_floating_button)
  })
  #password box
  observeEvent(input$input_password_box1, {
    message(input$input_password_box1)
  })
  observeEvent(input$password_box1, {
    message(input$password_box1)
  })
  observeEvent(input$input_password_box2, {
    message(input$input_password_box2)
  })
  observeEvent(input$password_box2, {
    message(input$password_box2)
  })
  
  # slider
  observeEvent(input$input_example_slider1, {
    message(input$input_example_slider1)
  })
  observeEvent(input$example_slider1, {
    message(input$example_slider1)
  })
  
  #input_radio_button
  observeEvent(input$input_example_radio_button1, {
    message(input$input_example_radio_button1)
  })
  observeEvent(input$example_radio_button1, {
    message(input$example_radio_button1)
  })
  observeEvent(input$input_example_radio_button2, {
    message(input$input_example_radio_button2)
  })
  observeEvent(input$example_radio_button2, {
    message(input$example_radio_button2)
  })
  
  observeEvent(input$input_example_dropdown1, {
    message(input$input_example_dropdown1)
  })
  observeEvent(input$example_dropdown1, {
    message(input$example_dropdown1)
  })
  observeEvent(input$example_date_picker, {
    message(input$example_date_picker)
  })
}

# Run the application
shinyApp(ui = ui, server = server)
