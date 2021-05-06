
# Fill in the blanks ('_____') with:
# . Congratulate a friend
# . @param
# . character string
# . @return

#' '_____________________'
#' 
#' '______' name_friend A '________________' of the name of your friend.
#' '_______' A character string : 'Congrats {name_friend} !'.
congratulate_friend <- function(name_friend) {
  congratulations <- paste("Congrats", name_friend, "!")
  return(congratulations)
}
