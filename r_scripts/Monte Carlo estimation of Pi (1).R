estimate_pi <- function(seed = 28, iterations = 1000){
  # set seed for reproducibility
  set.seed(seed)
  
  # generate the (x, y) points
  x <- runif(n = iterations, min = 0, max = 1)
  y <- runif(n = iterations, min = 0, max = 1)
  
  # calculate 
  sum_sq_xy <- sqrt(x^2 + y^2) 
  
  # see how many points are within circle
  index_within_circle <- which(sum_sq_xy <= 1)
  points_within_circle = length(index_within_circle)
  
  # estimate pi
  pi_est <- 4 * points_within_circle / iterations
  return(pi_est)
}

# store number of points we want to use in a vector
no_of_iterations <- c(10, 100, 1000, 10000, 100000, 1000000)

# use sapply to run our function for above number of points, store in res
res <- sapply(no_of_iterations, function(n)estimate_pi(iterations = n))

# add names so result is easy to read
names(res) <- no_of_iterations

# show result
res

# function that estimates pi and stores each estimated value for each iteration
estimate_pi_data <- function(seed=28, iterations = 1000) {
  set.seed(seed)
  
  # store generated points in a data frame
  df <- data.frame(x <- runif(n = iterations, min = -1, max = 1),
                   y <- runif(n = iterations, min = -1, max = 1))
  
  # add a column to index the number of iterations
  df$iteration <- 1:iterations
  
  # add column to identify if point falls within circle
  df$points_within_circle <- ifelse(sqrt(x^2 + y^2) <= 1, 1, 0) 
  
  # estimate pi
  df$pi_est <- 4 * cumsum(df$points_within_circle) / df$iteration
  
  return(df)
}

# generate estimation data for 1,000,000 points, save in 'pi_data'
pi_data <- est_pi_data(seed = 28, iterations = 1000000)

# make plot showing estimated pi as number of points increases
ggplot(pi_data, aes(x = iteration, y = pi_est)) +
  geom_line(col = "blue") +
  geom_hline(yintercept = pi) +
  ylim(c(3, 3.3)) +
  labs(title = expression(paste("Approximation of ", pi)),
       x = "number of points",
       y = expression(paste("estimated value of ",pi)))


