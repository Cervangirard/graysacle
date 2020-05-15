#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    graysacle_page(
      header = graysacle_header(ref_to_go = "about"),
      nav = graysacle_navbar("Graysacle Style", tabs = c("about" = "About", "projects" = "Projects", "contact" = "Contact")),
      body = tagList(
        graysacle_section_bg("about",
                             fluidRow(
                               column(8,
                                      class = "mx-auto text-center",
                                      h2("Grayscale", class = "text-white"),
                                      p("This is a example :D.", class= "text-white")
                               )
                             ),
                             img(src ="www/assets/img/ipad.png", class = "img-fluid"),
                             dark = TRUE),
        graysacle_section_bg("projects",
                             graysacle_one_project_img("www/assets/img/bg-signup.jpg",
                                                   title = "One project",
                                                   description = "Example of conponent for one project", dark = TRUE),
                             # galery
                             graysacle_projects_img("www/assets/img/demo-image-01.jpg", title = "First image", "Beautiful image", img_first = TRUE),
                             graysacle_projects_img("www/assets/img/demo-image-02.jpg", title = "Second image", "Beautiful second image", img_first = FALSE),
                             graysacle_projects(plotOutput("plot"),
                                                title = "A plot", description = "Iris.... Always iris...", first = TRUE)
        ),
        graysacle_section_bg("contact",
                          dark = TRUE,
                          fluidRow(
                            column(6,
                                   class = "mb-5 mx-auto",
                                   graysacle_card_txt("Mail", "cervan@thinkr.fr")
                            ),
                            column(6,
                                   class = "mb-5 mx-auto",
                                   graysacle_card_txt("Website", tags$a('ThinkR', href = "https://thinkr.fr", target= "_blank"))))
        )
      ),
      footer = grayscale_footer(h3("End ! :) "))
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){

  add_resource_path(
    'www', app_sys('app/www')
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'graysacle'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}

