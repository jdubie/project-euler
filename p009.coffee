

# A Pythagorean triplet is a set of three natural
# numbers, a  b  c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for
# which a + b + c = 1000.
# Find the product abc.

_ = require 'underscore'

## want to emunerate the set { (a,b,c) | a+b+c = 1000 }

for i in [0...1000]
  for j in [0...(1000 - i)]
    k = 1000 - i - j
    arr = [i,j,k]
    arr = _.sortBy arr, (num) -> -num
    if arr[0]*arr[0] == arr[1]*arr[1] + arr[2]*arr[2]
      console.error arr
      console.error _.reduce arr, (product,num) -> num*product