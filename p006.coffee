_ = require 'underscore'

n = 100
range = [1..n]

sum = _.reduce range, (sum,next) -> sum + next
square_of_sums = sum*sum

sum_of_squares = _.reduce range, (sum,next) -> sum + next*next

console.log square_of_sums - sum_of_squares
