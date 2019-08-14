makeCacheMatrix <- function(x = matrix()) { #this function 'caches' its own inverse value. 
  Inversed <- NULL
  
  set <- function(y){
    x <<- y
    Inversed <<- NULL
    
  }
  get <- function(){
    x
  }
  setInversed <- function(inverses){
    Inversed <<- inverses
  }
  getinverse <- function(){
    Inversed
  }
  list(set = set, get = get, setInversed = setInversed, getinverse = getinverse)
}  

cacheSolve <- function(x, ...) { #This function, however, inverses the value ("matrix") of the function above. 
  Inversed <- x$getinverse()     #I think this should inverse 'x', but I am not sure if I did it correctly. 
  if (!is.null(Inversed)) {
    message("Getting cached data:")
    return(Inversed)
  }
  dat <- x$get()
  Inversed <- solve(dat, ...)
  x$setInversed(Inversed)
}

#Feel free to tell me if I have certain bad habits, or if I did something wrong altogether. 
#In case someone deems it to be faulty and gives an error, could someone tell me how to test it myself?
#I thought this assignment was incredibly hard, now I added what the functions do, roughly.
#Furthermore, in my second edit, I have simplified many of the variable's names. 