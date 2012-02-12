util = require './util/factoring'

primes = []

for i in [2..1000000]
  arr = []
  util.factor i, arr

  primes.push(arr[0]) if arr.length == 1

  break if primes.length == 10001
  console.log primes.length

console.log primes[primes.length-1]