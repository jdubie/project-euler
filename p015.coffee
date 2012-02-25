# Starting in the top left corner of a 22 grid, there are 6 routes (without backtracking) to the bottom right corner.
# How many routes are there through a 2020 grid?

# use memiozation. again...

k = 20

genGrid = (n) ->
  result = []
  for i in [0..n]
    result[i] = []
    for j in [0..n]
      result[i][j] = false

  result

cache = genGrid k

pathFinder = (x,y,grid) ->
  return cache[x][y] if cache[x][y]
  return 1 if x == 0 and y == 0
  return 0 if grid[x][y]

  paths = 0

  # goes from bottom left to top right
  for i in [-1..0]
    for j in [-1..0]
      if (i == 0 || j == 0) and grid[x+i]? and grid[x+i][y+j]?
        grid[x][y] = true
        paths += pathFinder x + i, y + j, grid
        grid[x][y] = false

  cache[x][y] = paths
  return paths

console.log pathFinder k, k, genGrid k
