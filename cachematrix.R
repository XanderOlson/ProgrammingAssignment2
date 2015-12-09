# The following pair of functions cache the inverse of a 
# matrix as the calculation of a matrix inverse is 
# potentially a time-consuming computation.

# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv_matrix <- NULL
        set <- function(y) {
            x <<- y
            inv_matrix <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv_matrix <<- inverse
        getinverse <- function() inv
        list(set = set, 
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


# The following function calculates the inverse of the
# special "matrix" created with the above function. 
# However, it first checks to see if the inverse has 
# already been calculated. If so, it gets the inverse 
# from the cache and skips the computation. Otherwise, 
# it calculates the inverse of the matrix and sets the 
# inverse in the cache via the setmean function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv_matrix <- x$getinverse()
        if(!is.null(inv_marix)) {
            message("getting cached data")
            return(inv_matrix)
        }
        data <- x$get()
        inv_matrix <- solve(data, ...)
        x$setinverse(inv_matrix)
        inv_matrix
}
