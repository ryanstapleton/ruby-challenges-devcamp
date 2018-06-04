# Sam's house has an apple tree and an orange tree that yield an abundance of fruit. When a fruit falls from its tree, it lands d units of distance from its tree of origin along the x-axis. A negative value of d means the fruit fell d units to the tree's left, and a positive value of d means it falls d units to the tree's right.

# ______a____d_____s========t___b___d________

# Complete the function countApplesAndOranges where,

# s: Starting point of Sam's house location. 
# t: Ending location of Sam's house location. 
# a: Location of the Apple tree. 
# b: Location of the Orange tree. 
# m: Number of apples that fell from the tree. 
# apples[]: Distance at which each apple falls from the tree. 
# n: Number of oranges that fell from the tree. 
# oranges[]: Distance at which each orange falls from the tree.

# Given the value of d for m apples and n oranges, can you determine how many apples and oranges will fall on Sam's house (i.e., in the inclusive range [s,t])? Print the number of apples that fall on Sam's house as your first line of output, then print the number of oranges that fall on Sam's house as your second line of output.

# Output Format

# Print two integers on two different lines:

# 1. The first integer: the number of apples that fall on Sam's house.
# 2. The second integer: the number of oranges that fall on Sam's house.

# Sample Input

# 7, 11, 5, 15, [-2 2 1], [5 -6]

# Sample Output

# 1
# 1

def countApplesAndOranges(s, t, a, b, apples, oranges)
  apple_count, orange_count = 0, 0 
  apples.each do |d|
    if (d >= s-a) && (d <= t-a)
      apple_count += 1
    end
  end
  oranges.select{|num| num < 0}.each do |d|
    if (d >= s-b) && (d <= t-b)
      orange_count += 1
    end
  end
  printf("%s\n%s", apple_count, orange_count)
end

s = 7
t = 11
a = 5
b = 15
apples = [-2, 2, 1]
oranges = [5, -6]

countApplesAndOranges(s, t, a, b, apples, oranges)