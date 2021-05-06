
#' Fill in the blanks _____ with:
# . @param
# . character string
# . Congratulate a friend
# . @return

#' _____
#' 
#' _____ name_friend A _____ of the name of your friend.
#' _____ A character string : 'Congrats {name_friend} !'.
congratulate_friend <- function(name_friend) {
  congratulations <- paste("Congrats", name_friend, "!")
  return(congratulations)
}
