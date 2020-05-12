#' Navbar
#'
#' @param title title of app
#' @param tabs named vector
#'
#' @export
graysacle_navbar <- function(title, tabs){
  tagList(
    tags$nav(id = "mainNav",
             class = "navbar navbar-expand-lg navbar-light fixed-top",
             tags$div(class = "container",
                      tags$a(class = "navbar-brand js-scroll-trigger",  href="#page-top", title),
                      tags$button(class = "navbar-toggler navbar-toggler-right",
                                  type = "button",
                                  "data-toggle" = "collapse",
                                  "data-target" = "#navbarResponsive",
                                  "aria-controls" = "navbarResponsive",
                                  "aria-expanded" = "false",
                                  "aria-label" = "Toggle navigation", "Menu"
                      ),
                      tags$div(class = "collapse navbar-collapse", id="navbarResponsive",
                               tags$div(class = "collapse navbar-collapse",
                                        tags$ul(class = "navbar-nav ml-auto",
                                                tagList(
                                                  mapply(function(x, y ){
                                                    tags$li(class = "nav-item",
                                                            tags$a(class = "nav-link js-scroll-trigger",
                                                                   href = paste0("#", y), x
                                                            )
                                                    )
                                                  }, tabs, names(tabs), SIMPLIFY = FALSE)
                                                )
                                        )
                               )
                      )
             )
    )
  )
}
