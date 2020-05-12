#' Section and choose background dark or not
#'
#' @param id one of these id pass to graysacle_nav
#' @param ... html code
#' @param dark if TRUE black background otherwise white
#'

#'
#' @return tagList
#' @export
graysacle_section_bg <- function(id, ..., dark = FALSE){
  class_id <- paste0(id, "-section")
  if(dark){
    class <- paste(class_id, "bg-dark")
  }else{
    class <- paste(class_id, "bg-light")
  }
  tagList(
    tags$section(id = id,
                 class = class,
                 tags$div(class = "container", ...
                 )
    )
  )
}

#' Section
#'
#' @param id one of these id pass to graysacle_nav
#' @param ... html code
#'
#' @return tagList
#' @export
graysacle_section <- function(id, ...){
  class_id <- paste0(id, "-section")
  tagList(
    tags$section(id = id,
                 class = class_id,
                 tags$div(class = "container",
                          ...
                 )
    )
  )
}

#' One project div
#'
#' @param src_to_img path to www folder for img
#' @param title title
#' @param description description
#' @param dark if TRUE black background otherwise white
#'
#' @return tagList
#' @export
graysacle_one_project <- function(src_to_img, title, description ,dark = FALSE){

  if(dark){text_color <- 'text-black'}else{text_color <- 'text-white'}
  tagList(
    tags$div(class = "row align-items-center no-gutters mb-4 mb-lg-5",
             tags$div(class = "col-xl-8 col-lg-7",
                      tags$img(class = "img-fluid mb-3 mb-lg-0", src = src_to_img)
             ),
             tags$div(class = "col-xl-4 col-lg-5",
                      tags$div(class = "featured-text text-center text-lg-left",
                               h4(title,
                                  class = text_color),
                               p(description,
                                 class = paste(text_color, "mb-0")
                               )
                      )
             )
    )
  )
}

#' Another formatting project
#'
#' Better using this fonction if you have more then one project
#'
#' @param img path to www folder for img
#' @param title title
#' @param description description
#' @param img_first if TRUE, img should be on the left side
#'
#' @return tagList
#' @export
graysacle_projects <- function(img, title, description, img_first = TRUE){
  if(img_first){
    class <- "col-lg-6 order-lg-first"
    align <- "text-lg-right"
    line <- "mb-0 mr-0"
  }else{
      class <- "col-lg-6"
      align <- "text-lg-left"
      line <- "mb-0 ml-0"
      }
  tagList(
    tags$div(class = "row justify-content-center no-gutters",
             tags$div(class = "col-lg-6", tags$img(class = "img-fluid", src = img)),
             tags$div(class = class,
                      tags$div(class = "bg-black text-center h-100 project",
                               tags$div(class = "d-flex h-100",
                                        tags$div(class = paste("project-text w-100 my-auto text-center", align),
                                                 tags$h4(class = "text-white", title),
                                                 tags$p(class = "mb-0 text-white-50", description),
                                                 tags$hr(class = paste("d-none d-lg-block", line))
                                        )
                               )
                      )
             ),
             tags$div(tags$hr(class = "d-none d-lg-block mx-auto"))
    )

  )

}

#' Graysacle card with text
#'
#' @param title title
#' @param description description
#'
#' @return tagList
#' @export
#'
graysacle_card_txt <- function(title, description){
  tagList(
    tags$div(class= "card py-2 h-100",
             tags$div(class= "card-body text-center",
                      tags$h4(class = "text-uppercase m-0", title),
                      tags$hr(class = "my-3"),
                      p(class ="small text-black-50", description)
             )
    )
  )
}


#' Graysacle card
#'
#' @param ... whatever html code
#'
#' @return tagList
#' @export
graysacle_card <- function(...){
  tagList(
    tags$div(class= "card py-2 h-100",
             tags$div(class= "card-body text-center",
                      ...
             )
    )
  )
}
