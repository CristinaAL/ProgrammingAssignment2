## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#I use the example given for calculate the mean as a patron, to construct these two functions
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) { #Here I set the value of the matrix
      x <<- y
      m <<- NULL
  }
  get <- function() x #Then I get it value
  setinverse <- function(solve) m <<- solve #I set the value of the inverse using solve
  getinverse <- function() m #And finally I get it 
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
 }


## Write a short comment describing this function
#This function calculates the value of the inverse of the matrix that I set before
 cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
