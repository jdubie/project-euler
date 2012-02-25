# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# STRATEGY
# basically they want the non-redundant prime factorization

_    = require 'underscore'
util = require './util/factoring'

n      = 20
range  = [1..n]
# primes = {}

# for i in range
#   factors = util.factor i, []

#   if factors == 1 # then prime itself
#     primes[i] = 1 unless primes[i]?
#     primes[i] = Math.max 1, primes[i]


#   console.log primes

console.log _.select range, (divisor) -> util.divides 1*2*2*2*2*3*3*5*7*11*13*17*19, divisor

console.log 1*2*2*2*2*3*3*5*7*11*13*17*19
