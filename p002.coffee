# recursive fib function with memoization

cache = {}

fib = (i) ->

  # memoization
  return cache[i] if cache[i]?

  # base case
  return 1 if i <= 1

  # cache and recurse
  cache[i] = fib(i-2) + fib(i-1)
  return cache[i]


## it's business time
sum = 0
i = 0
while true
  term = fib(i++)
  break if term > 4*1000*1000
  sum += term if term % 2 == 0

console.log sum