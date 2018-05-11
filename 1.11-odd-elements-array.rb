# Summary
# Build a program that filters an array of integers, and returns the odd elements.

# Exercise Description
# The program should take in an array of integers and output a filtered array that only contains the odd integers.

# Sample Input
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# Sample Output
# [1, 3, 5, 7, 9]
# Real World Usage
# Being able to filter a list of elements is a common requirement in Ruby programs. Additionally, this solution allows you to utilize a number of built in filtering mechanisms provided by the Ruby enumerable library.


require 'rspec'

class Array
  def odd_selector
    self.select{|n| n.odd?}
  end
end

describe 'Array::odd_selector:' do
  it 'given an array, it returns a collection of the odd elements' do
    expect(Array(1..10).odd_selector).to eq([1, 3, 5, 7, 9])
  end
end