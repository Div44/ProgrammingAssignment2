# To make use of code below i)use makeCacheMatrix function ii)use cacheSolve as many times to get inverse 
makeCacheMatrix <- function(M){ # To create "matrix" object m which can be used later
    m<<-M
    inverse<<-NULL
    get_matrix<-function() m
    get_inverse<-function() inverse
    cache_inverse<-function(invers) inverse<<-invers
    list(get_matrix=get_matrix, get_inverse=get_inverse, cache_inverse=cache_inverse)
}
cacheSolve<-function(M){ # To check and if inverse not cached then cache it
    m<-M$get_matrix()
    inverse<-M$get_inverse()
    if (!is.null(inverse))
        return(inverse)
    else{
        inverse<-solve(m)
        M$cache_inverse(inverse)
        return(inverse)
    }
}