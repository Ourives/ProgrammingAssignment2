## This program aims to calculate the inverse matrix and stores the result in your cache. 
## Thus, if requested your calculation again there is no time wasted processing, because your answer will be cached.

## This first part is to calculate the inverse matrix objetico and store in cache its result.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL    }    
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}



## This second performs the test to check for the cached response, if any reuses. Otherwise, it performs the calculation.

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


