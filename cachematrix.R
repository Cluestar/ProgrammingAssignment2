makeCacheMatrix <- function(z = matrix()) { #I was messing around a lot in a different Rscript altogether and accidentally renamed x into z, but I stuck with it
  Inversed <- NULL
  
  sets <- function(matrix){
    Inversed <<- NULL
    z <<- matrix
  }
  
  gets <- function()     {
    z
  }
  
  setsinversedmatrix <- function(inverses){
    Inversed <- inverses
  }
  getsinversedmatrix <- function(){
    Inversed
  }
  list(sets = set, gets = gets, setsinversedmatrix = setsinversedmatrix ,getsinversedmatrix = getsinversedmatrix)
} #I thought this assignment was incredibly hard :(



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  z <- x$getsinversedmatrix() #I think this should inverse 'x', but I am not sure if I did it correctly. 
  if(isTRUE(z)) {
    return(z)
  }
  dat <- x$get()
  z <- solve(dat) %*% dat
  x$setsinversedmatrix
  z
}