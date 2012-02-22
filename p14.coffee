# Collatz Sequence
# n  n/2 (n is even)
# n  3n + 1 (n is odd)

collatz = (k,n) ->
  return n if k == 1
  switch k % 2
    when 0
      collatz k/2, n+1
    when 1
      collatz 3*k + 1, n+1

console.log collatz 13, 0