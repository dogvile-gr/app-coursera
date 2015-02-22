shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Body mass Index"),
                sidebarPanel(
                        numericInput('height', 'm', 1.5, min = 1.5, max = 2.1, step = 0.01),
                        numericInput('weight', 'kgr', 40, min = 100, max = 200, step = 0.1),
                        submitButton('Submit')
                       ),
                mainPanel(

                        h4('Your height is: '),                  
                        verbatimTextOutput("inputValue1"),
                        h4('Your weight is: '),
                        verbatimTextOutput("inputValue2"),
               
                       
                        h4('Your Body Mass index is: '),
                        verbatimTextOutput("bmi"),
#                         h4('You belong in category: '),
#                         verbatimTextOutput("category"),
                        br(),
                        
                        
                        
                        
p(style = "font-size:11px","BMI is used differently for children. It is calculated in the same way as for adults, but then compared to typical values for other children of the same age. Instead of comparison against fixed thresholds for underweight and overweight, the BMI is compared against the percentile for children of the same gender and age"),
br(),
p(style = "font-size:11px","A BMI that is less than the 5th percentile is considered underweight and above the 95th percentile is considered obese. Children with a BMI between the 85th and 95th percentile are considered to be overweight."),
br(),
p(style = "font-size:11px","Recent studies in Britain have indicated that females between the ages 12 and 16 have a higher BMI than males of the same age by 1.0 kg/m2 on average"),
br(),
p(style = "font-size:8px","source: http://en.wikipedia.org/wiki/Body_mass_index")

                )

        )
)