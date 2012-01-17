## Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# helper operator
divides = (dividend,divisor) ->
  quotient = dividend / divisor
  return quotient == Math.floor(quotient)

primeFactors = []

# trial division
factor = (n) ->

  for i in [2...n]

    if divides(n,i)
      factor(i)
      factor(n / i)
      return

  # if no factors n is prime factor
  primeFactors.push n

n = 600851475143

factor n

console.log primeFactors