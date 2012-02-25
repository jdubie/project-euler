_ = require 'underscore'
a = [0...1000]
a = _.select a, (b) ->
  b % 5 == 0 or b % 3 == 0

reduce = (memo, num) ->
  memo + num

a = _.reduce a, reduce, 0

console.error a