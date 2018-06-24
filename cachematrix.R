## Put comments here that give an overall description of what your
## functions do

## cache "matrix" to cache the inverse
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set function(y){
x <<- y
inv <<- NULL
}
get <- function() x
setInv <- function(solmaxtrix) inv <<- solmaxtrix
getInv <- function() inv
list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## compute the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInv()
if(!is.null(inv)){
message("get cache data")
return(inv)
}
data <- x$get()
inv <- sol(data)
inv
}
