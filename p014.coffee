# Collatz Sequence
# n  n/2 (n is even)
# n  3n + 1 (n is odd)

# apply simple memiozation

cache = []

collatz = (k) ->
  return cache[k] if cache[k]?
  return 1 if k == 1
  res = 0
  switch k % 2
    when 0
      res = 1 + collatz k/2
    when 1
      res = 1 + collatz 3*k + 1
  cache[k] = res
  return res

max = 0
for i in [1...1000000]
  res = collatz i
  if res > max
    max = res
    answer = i
console.log collatz 13
console.log answer
