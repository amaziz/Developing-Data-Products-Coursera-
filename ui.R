library(shiny) 
shinyUI(pageWithSidebar(
        headerPanel("Visualizing UC Berkeley Admissions in 1973"),
        tabPanel("Plot",
        sidebarPanel(
                h3('Select the options to filter data'), 
                checkboxGroupInput("gender", "Gender:", c(
                         "Male" = "Male",
                        "Female" = "Female"
                                 ), selected = c("Male", "Female")),
                
                checkboxGroupInput("admittance", "Admittance:",
                             c(
                               "Admitted" = "Admitted",
                               "Rejected" = "Rejected"
                               ), selected = c("Admitted", "Rejected")),
                
                checkboxGroupInput("departments", "Department:",
                                   c("A" = "A",
                                     "B" = "B",
                                     "C" = "C",
                                     "D" = "D",
                                     "E" = "E"
                                     ), selected= c("A","B", "C", "D", "E" )
                )),
        mainPanel(
                h3('Your choices are:'), 
                h4('Gender:'),
                verbatimTextOutput("ogender"),
                h4('Admittance:'),
                verbatimTextOutput("oadmittance"),
                h4('Departments:'),
                verbatimTextOutput("odepartments"),
                plotOutput('oplot')
                )),
                tabPanel("Documentation", mainPanel(
                        includeMarkdown("README.md")
                )
        
)))