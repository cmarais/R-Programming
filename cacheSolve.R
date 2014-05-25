cacheSolve <- function(x, ...) {
  m <- x$getsolve()                # Determine if the inverse of x is in the cache
  if(!is.null(m)) {                # If inverse is in the cache:
    message("getting cached data") # Dispaly message that cached data is being retrieved
    return(m)                      # Return the value of the inverse and end the function
  }                                # If solution is not in cache:    
  data <- x$get()                  # Retrieve the x matrix from the cache
  m <- solve(data, ...)            # Determine the inverse of the x matrix using the solve function
  x$setsolve(m)                    # Set the solution to the cache
  m                                # Return the solution as the output of the function
}