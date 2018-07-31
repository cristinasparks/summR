
#' Say Aloha
#'
#' @param name (character) Name of the person to say good summer to
#' @param print (logical) Option to print your message. Defaults to TRUE.p
#'
#' @return (character) good summer message
#' @export
#'
#' @examples
#' # say good summer to Cristina
#' say_aloha("Cristina")
#'
#'@importFrom crayon bgCyan
#'@importFrom emo ji
#'
say_aloha <- function(name, print = TRUE) {

  stopifnot(is.character(name)) ## First thing!

  # if (!(is.character(name))) {
  #   stop("Name must be a non empty character. Input a name you want to say aloha to!")
  # }

  message <- paste("Have a good summer,",
                   name,
                   emo::ji("dog"),
                   emo::ji("sunny"),
                   emo::ji("ocean"))

  if (print) {
    cat(crayon::bgCyan(message))
  }

  invisible(message)
}
