string_double = (str) ->
  result = ''
  remainder = 0
  for j in [str.length-1..0]
    k = parseInt str[j]
    k *= 2
    k += remainder
    if j != 0
      if k >= 10
        k -= 10
        remainder = 1
      else
        remainder = 0

    string_k = JSON.stringify k
    result =  string_k + result

  return result

s = '2'
for i in [1...1000]
  s = string_double s

console.log s


sum = 0
for i in [0...s.length]
  sum += parseInt s[i]

console.log sum


#console.log string_double '128'