# Summary
# Build a program that outputs a specific set of random numbers.

# Exercise Description
# The program should take in an integer as an argument and each time it's called should generate the next number in an identical sequence.

# Sample Use
# Called the first time:
# i = pseudo_random 5
# i.resume # 37
# i.resume # 12
# i.resume # 72
# i.resume # 9
# i.resume # 75

# Called a second time:
# i = pseudo_random 5
# i.resume # 37
# i.resume # 12
# i.resume # 72
# i.resume # 9
# i.resume # 75

# Real World Usage
# This exercise allows you to practice on a number of important development practices:
# - Working with random numbers and overriding default randomness, this is key to building automated tests for processes that rely on random numbers.
# - Implementing the ability for a program to maintain its state.

require 'rspec'

def pseudo_random(n)
  srand(1)

  fiber = Fiber.new do
    n.times do
      Fiber.yield rand(100)
    end
  end
end

describe 'Psudeo random number generator' do
  it 'creates the same sequence of random numbers' do
    random_sequence = pseudo_random(3)
    expect(random_sequence.resume).to eq(37)
    expect(random_sequence.resume).to eq(12)
    expect(random_sequence.resume).to eq(72)
  end
end