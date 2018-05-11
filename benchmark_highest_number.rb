require 'rspec'
require 'benchmark'

def new_max array_of_elements
  highest_number = 0
  array_of_elements.each do |element|
    if element > highest_number
      highest_number = element
    end
  end
  highest_number
end

# def new_max array_of_elements
#   array_of_elements.max
# end

# def new_max array_of_elements
#   array_of_elements.sort.last
# end

# def new_max array_of_elements
#   array_of_elements.sort.pop
# end

arr = Array.new(100_000_000) {rand 1000}
new_max(arr)

Benchmark.bm(10) do |x|
  x.report("Each: ".ljust(20)) { new_max  arr }
  x.report("Last-Sorted: ".ljust(20)) { arr.sort.last }
  x.report("Pop-Sorted: ".ljust(20)) { arr.sort.pop }
  x.report(".max: ".ljust(20)) { arr.max }
end

# describe 'New Max method' do
#   it 'returns the max value from an array efficiently' do
#     test_array = [2, 4, 10, 3, 1]
#     expect(new_max(test_array)).to eq(10)
#   end
# end