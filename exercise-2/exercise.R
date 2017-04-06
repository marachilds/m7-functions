# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  diff <- abs(length(v1) - length(v2))
  diff.result <- paste("The difference in lengths is", diff)
  return(diff.result)
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(3,5,9), 3:9)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  diff <- (length(a) - length(b))
  if (diff > 0) {
    result <- paste("Your first vector is longer by", diff, "elements")
  } else {
    result <- paste("Your second vector is longer by", -diff, "elements") 
  }
  return(result)
}


# Pass two vectors to your `DescribeDifference` function
DescribeDifference(2:33, 101:122)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
# Calling it 'DescribeDifferenceNamed' for clarity here
DescribeDifferenceNamed <- function(a, b) {
  diff <- (length(a) - length(b))
  if (diff > 0) {
    vector.one <- deparse(substitute(a))
    result <- paste("Vector", vector.one, "is longer by", diff, "elements")
  } else {
    vector.two <- deparse(substitute(b))
    result <- paste("Vector", vector.two, "is longer by", -diff, "elements") 
  }
  return(result)
}


# Passing two named vectors through to test
peach <- c(1:32)
plum <- c(22:24)

DescribeDifferenceNamed(peach,plum)

