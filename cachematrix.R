## Assignment
## functions do what they are supposed to do

## This is godfather function that makes a matrix

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y){
                x <<- y
                inverse <<- NULL
        }
        
        get <- function(){
                x
        }
        
        setInverse <- function(inv){
                inverse <<- inv
        }
        
        getInverse <- function(){
                inverse
        }
        
        list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## This func will get the matrix inverse if not present, else use cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        inv <- x$getInverse()
        if(!is.null(inv)){
                print("getting cache")
                return(inv)
        }
        
        matrix <- x$get()
        inv <- solve(matrix, ...)
        x$setInverse(inv)
        inv
}
