## Put comments here that give an overall description of what your
## functions do
##This code is written by RADHIKA
## Write a short comment describing this function
## I created x as the input of matrix
## solving "rads" as a null
makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
        rads <- NULL
        set <-function(am)
       {
                x <<- am
                rads <<- NULL
       }
       get <- function() x
        setsolve <-function(solve) rads <<- solve
        getsolve<- function() rads
        list( set= set, get= get, setsolve= setsolve, getsolve = getsolve)
                
}
## This code is written by RADHIKA
## Write a short comment "solve" for getting the function
##Changed "mean" to "solve to get out output
cacheSolve <- function(x, ...) {
       
        rads <- x$getsolve()
        if(!is.null(rads))
        {
                message ("Getting Inversed Matrix As:")
                return(rads)
        }
        data <-x$get()
        rads <- solve(data, ...)
        x$setsolve(rads)
        rads
}
