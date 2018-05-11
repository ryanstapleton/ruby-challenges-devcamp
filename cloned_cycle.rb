require 'rspec'

def cloned_cycle array, repeat
  final_array = []
  repeat.times { array.each { |j| final_array << j } }
  final_array
end

describe 'Cloned cycle' do
  it 'Iterates through an array a variable number of times and returns the full set of elements' do
    arr = (1..3)
    expect(cloned_cycle(arr, 3)).to eq([1, 2, 3, 1, 2, 3, 1, 2, 3])
  end
end