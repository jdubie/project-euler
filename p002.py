cache = {}

def fib(n):
  if n in cache: return cache[n]
  if n == 1 or n == 0:
    return 1
  f = fib(n-1) + fib(n-2)
  cache[n] = f
  return f

#for i in range(50):
#  print fib(i)
i = 0
while 1 == 1:
  i += 1
  cur = fib(i)
  if cur > 4000000: break
  print cur
