# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# we want to generally enumerate all pairs of 3 digit numbers with two goals in our enumeration:
#  a) as little repetition as possible
#  b) generally ordering from largest products to smallest products

is_palindrome = (num) ->
  # base case
  return true if num.length == 0 or num.length == 1

  # check if in violation on ends
  return false if num[0] != num[num.length-1]
  # recurse
  return is_palindrome num[1...num.length-1]

gen_products = (arr,result) ->

  # base case
  return if arr.length == 0

  if arr.length == 1
    result.push arr[0] * arr[0]
    return

  result.push(arr.pop()*arr.shift())
  gen_products arr,result

# hueristic to get close to descending product ordering
# is to use sums
for sum in [999+999...0]

  arr = [999..sum-999]
  products = []
  gen_products arr, products

  # console.error products
  for product in products
    if is_palindrome product.toString()
      console.log product
      return # ...and we're done