util = require './util/factoring'
_    = require 'underscore'

primes = []
primeSum = 0

console.log "BEGIN: Finding all primes less than 2000000"
start = Date.now()
for i in [2..2000000]

  if util.prime i, primes
    primes.push i
    primeSum += i


end = Date.now()
console.log "SUM: " + primeSum
console.log "END: " + (end - start) + "ms"
