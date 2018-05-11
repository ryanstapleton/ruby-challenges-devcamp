require 'rspec'
require 'benchmark'

def random_numbers
  Array.new(20).map do |number|
    number = rand(1000)
  end
end

def random_numbers2
  random_array = 20.times.map { rand(1000) }
end

# Array can take a block
def random_numbers3
  Array.new(20) { rand(1000) }
end

Benchmark.bm(10) do |x|
  x.report(".map method: ".ljust(10)) { random_numbers }
  x.report(".map method: ".ljust(10)) { random_numbers2 }
  x.report(".map method: ".ljust(10)) { random_numbers3 }
end

describe 'Random number collection generator' do
  it 'creates a collection of random numbers ranging from 0 to 999' do
    # Not a perfect test since there is a slight chance for duplicate
    # Arrays to be created
    random_set_one = random_numbers
    random_set_two = random_numbers
    expect(random_numbers.count).to eq(20)
    expect(random_set_one).to_not eq(random_set_two)
  end
end