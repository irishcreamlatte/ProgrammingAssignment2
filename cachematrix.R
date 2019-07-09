## Put comments here that give an overall description of what your
## functions do 

## Write a short comment describing this function

## First, write a function which creates a matrix and 
## caches its inverse. This function creates a list with 
## nested functions which sets the matrix, and also sets 
## the inverse of the matrix. 

makeCacheMatrix <- function(x = matrix()) {
  inverse_matrix <- NULL
  set <- function(y){
    x <<- y
    inverse_matrix <<- NULL
  }
  get <- function() x
  set_inversematrix <- function(inverse) inverse_matrix <<- inverse 
  get_inversematrix <- function() inverse_matrix
  list(set = set, 
       get = get, 
       set_inversematrix = set_inversematrix, 
       get_inversematrix = get_inversematrix)
}


## Write a short comment describing this function

## cacheSolve first checks if the inverse of the matrix is 
## cached. If yes, that cached inverse is returned. If no 
## inverse matrix is cached, cacheSolve calculates for it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse_matrix <- x$get_inversematrix()
  if(!is.null(inverse_matrix)){
    message("getting cached data")
    return(inverse_matrix)
  }
  data <- x$get()
  inverse_matrix <- solve(data)
  x$set_inversematrix(inverse_matrix)
  inverse_matrix
}
