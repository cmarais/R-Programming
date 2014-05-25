makeCacheMatrix <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y                               # Set new values for x and m, and make the solution null
    m <<- NULL
  }
  get <- function() x                     # Get the cached value of x
  setsolve <- function(solve) m <<- solve # Set the solution in the cache
  getsolve <- function() m                # Retrieve the solution of the inverse from cache
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)               # Assign cached matrix to a list and display the output
}