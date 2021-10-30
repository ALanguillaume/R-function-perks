
## Check list
# meaningful name
# function(..) {...}
# arguments
# body (recipe)
# return (explicit/implicit)

## Function to greet a friend

greet_friend <- function(name_friend) {
  greeting <- paste("Hello", name_friend, "!")
  return(greeting)
}

greet_friend("Diane")
