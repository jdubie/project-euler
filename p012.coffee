# everytime we find one factor less than
# sqrt(sum), we know there is another one
# equal to sum/divisor which is greater than
# sqrt(sum) which we will not count

sum = 0

for i in [0...1000000]
  sum += i
  divisors = 0
  for j in [0..Math.sqrt sum]
    divisors += 2 if sum % j == 0

  console.log sum, divisors
  if divisors > 500
    console.log sum
    break