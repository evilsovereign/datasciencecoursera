makeCacheMatrix <- function(x = matrix()) {             ## input x will be a matrix
        m <- NULL                                       ## m will be solved matrix, reset to NULL every time makeVector is called
        set <- function(y) {                            ## takes input matrix y
                x <<- y                                 ## saves input matrix through superassignment
                m <<- NULL                              ## resets solved matrix to NULL
        }
        get <- function() {x}                           ## returns value of original matrix
        setinv <- function(solve) {m <<- solve}         ## called by cacheSolve during first access, store the value using superassignment
        getinv <- function() {m}                        ## return the cached value to cacheSolve on susequent accesses
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)                           ## list of internal functions ('methods') so a calling function knows how to access those methods
}