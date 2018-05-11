require 'rspec'

class Array
  def bubble_sort
    switched = true
    while switched do
      switched = false
      (self.length - 1).times do |index|
        if self[index] > self[index + 1]
          self[index], self[index + 1] = self[index + 1], self[index]
          switched = true
        end
      end
    end
    self
  end
end

# Jordan's solution

# class Array
#   def bubble_sort
#     n = self.length

#     loop do
#       swapped = false

#       (n-1).times do |i|
#         if self[i] > self[i+1]
#           self[i], self[i+1] = self[i+1], self[i]
#           swapped = true
#         end
#       end

#       break if not swapped
#     end

#     self
#   end


describe 'Adding bubble sort to the Array class' do
  it 'Properly sorts an array' do
    arr = [4, 1, 6, 10, 44, 2, 3]
    expect(arr.bubble_sort).to eq(arr.sort)
  end
end