## Comments

## Comments 2

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NUL    }    get <- function() x
    setsolve <- functin(solve) m <<- solve
    getsolve <- functin() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}



## Comments 3

cacheSolve <- function(x, ...) {
    m <- x$getsolve()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
}


