shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Body mass Index"),
                sidebarPanel(

                        numericInput('height', 'cm', 160, min = 148, max = 210, step = 0.1),
                        numericInput('weight', 'kgr', 40, min = 100, max = 200, step = 0.1),
                        submitButton('Submit'),
                        conditionalPanel(
                                condition = "output$bmi <= '1'",
                                p("Conditional text here")
                                )
                ),
                mainPanel(

                        h3('Results of prediction'),
                        h4('You entered'),
                        verbatimTextOutput("inputValue"),
                        verbatimTextOutput("inputValue"),
                        h4('Which resulted in a prediction of '),
                       
                        h4('bmi'),
                        verbatimTextOutput("bmi")

                )

        )
)