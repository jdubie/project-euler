f =

  divides: (dividend,divisor) ->
    return dividend % divisor == 0

  # trial division
  factor: (n,pf) ->

    for i in [2...n]

      if f.divides(n,i)
        f.factor(i,pf)
        f.factor(n / i,pf)
        return pf

    # if no factors n is prime factor
    pf.push n

  prime: (n,primeList) ->
    i = 1
    if primeList? and primeList.length > 0
      for i in primeList
        if i > Math.sqrt n
          break
        if f.divides n, i
          return false

    # for i in [2..Math.sqrt n]
    #   if n % i == 0
    #     return false

    # assuming the next prime will always be less than double
    # the previous prime
    return true



module.exports = f
