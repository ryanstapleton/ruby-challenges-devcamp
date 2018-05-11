# Summary
# Build a program that sums all of the integers up to, and including any value passed in as an argument.

# Exercise Description
# The program should be able to take in a single argument of an integer, and output the sum of all of the integers up to the argument's value.

# Sample Input: 10
# Sample Output: 55
# Real World Usage
# This is a common Ruby coding interview question. Additionally, being able to create dynamic ranges and perform calculations on the collection is important in a number of applications.

require 'rspec'

def sum_generator(num)
  (0..num).inject(:+)
end

describe 'sum_generator(argument):' do
  it 'outputs a sum of digits ranging from 0 through the value of the argument' do
    expect(sum_generator(10)).to eq(55)
    expect(sum_generator(20)).to eq(210)
    expect(sum_generator(25)).to eq(325)
    expect(sum_generator(40)).to eq(820)
  end
end