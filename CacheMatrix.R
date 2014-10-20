## This function is all about the calc of matrix inverse
## This function made a matrix for "x" parameters
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y) {
x <<- y
m <<- NULL
}
get <- function() x
setmatrix <- function(solve) m <<- solve # Solve the ecuation system of a matrix
getmatrix <- function() m
list(set = set, get = get,
setmatrix = setmatrix,
getmatrix = getmatrix)
}
## This function made to return the inverse of matrix of "x"
cacheSolve <- function(x=matrix(), ...) {
## Return a matrix that is the inverse of 'x'
m <- x$getmatrix()
if(!is.null(m)) {
message("getting cached data")
return(m)
}
thematrix <- x$get()
m <- det(thematrix, ...)
x$setmatrix(m)
m
}
