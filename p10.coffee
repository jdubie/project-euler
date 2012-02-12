util = require './util/factoring'
_    = require 'underscore'

primes = []
primeSum = 0

for i in [2..2000000]

  if util.prime i, primes
    primes.push i
    primeSum += i

  if i % 100000 == 0
    console.log i

console.log primeSum
