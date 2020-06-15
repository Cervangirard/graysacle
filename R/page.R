#' Get graysacle page
#'
#' @param header result of graysacle_header()
#' @param nav result of graysacle_nav()
#' @param body html code
#' @param footer html code
#'
#' @return tagList
#' @export
graysacle_page <- function(header, nav, body, footer){
  tagList(
    tags$html(
      tags$head(graysacle_head()),
      tags$body(
        id="page-top",
        header,
        nav,
        body,
        graysacle_ressources(),
        footer
      )
    )
  )
}

#' Header
#'
#' @param ref_to_go ref of section to go when click on Get Started
#' @param title title
#' @param description description
#' @param img path to a img (storage in www folder)
#'
#' @return tagList
#' @export
graysacle_header <- function(ref_to_go, title = "Grayscale", description = "Example of grayscale", img = "www/assets/img/bg-masthead.jpg"){
  tagList(
    tags$header(class = "masthead",
                style = paste0("background:url(",img,")"),
                tags$div(class = "container d-flex h-100 align-items-center",
                         tags$div(class = "mx-auto text-center",
                                  tags$h1(class = "mx-auto my-0 text-uppercase", title),
                                  tags$h2(class= "text-white-50 mx-auto mt-2 mb-5", description),
                                  tags$a(class = "btn btn-primary js-scroll-trigger", href = paste0("#",ref_to_go), "Get Started")))
    )
  )
}

#' Get JS ressources
#'
#' @export
#' @return tagList
graysacle_ressources <- function(){
  tagList(
    tags$script(src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"),
    tags$script(src = "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"),
    tags$script(src = "https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"),
    includeScript(system.file("app/www/js/scripts.js", package = "graysacle"))
  )
}

#' Get general ressources
#'
#' @return tagList
graysacle_head <- function(){
  tagList(
    tags$script(src = "https://use.fontawesome.com/releases/v5.12.1/js/all.js"),
    tags$link(href = 'https://fonts.googleapis.com/css?family=Varela+Round', rel ="stylesheet"),
    tags$link(href = 'https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i', rel ="stylesheet"),
    includeCSS(system.file("app/www/css/styles.css", package = "graysacle"))
  )
}

#' Footer
#'
#' @param ... whatever html code
#'
#' @return tagList
#' @export
grayscale_footer <- function(...){
  tagList(
    tags$footer(class = "footer bg-black small text-center text-white-50",
                tags$div(class = "container", ...))
  )
}
