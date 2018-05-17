# Longest prefix that contains same number of X and Y in an array

# Given two positive integers X and Y, and an array arr[] of positive integers. We need to find the longest prefix index which contains an equal number of X and Y. Print the maximum index of largest prefix if exist otherwise print -1.

def solution(x, y, a)
  n = a.length
  result = -1
  nX = 0
  nY = 0
  i = 0
  while (i < n)
      if (a[i] == x) then
          nX += 1
      end
      if (a[i] == y) then
          nY += 1
      end
      if (nX == nY) && !(nX == 0) && !(nY == 0) then
          result = i
      end
      i += 1
  end
  return result
end

a = [6,42,11,7,1,42]
b = [13,13,1,6]
c = [100,63,1,6,2,13]
d = []

p solution(13,13,b)