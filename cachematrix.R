## Function makeCacheMatrix creates a special matrix  to cache its inverse
## Function cacheSolve computes the special matrix of makeCacheMatrix function 

## Function makeCacheMatrix caches the inverse of a matrix.
## Case original matrix was not called inputs NULL to special matrix

makeCacheMatrix <- function(x = matrix()){
        m <<- NULL
        minv <<- NULL
        if(is.na(x[1,1])==FALSE){
                m <<- x
                minv <<- solve(x)
        }else{
                print("Insert matrix to be inverted")
                minv <<- NULL
        }
}

        
        
        
## cacheSolve verifies if a inverse of a matrix was already calculated by makeCacheMatrix
## Case positive presents it.
## case negative cacheSolve calculates the inverse of the matrix and presents it.

cacheSolve <- function(x, ...) {
        if(is.null(minv)){
                message("getting cached data")
                m <<- x
                minv <<- solve(x)
                minv
        } else{
                minv
        }
}
