# Summary
# Build a FizzBuzz program that stores the FizzBuzz data in a hash data structure.

# Exercise Description
# Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz", and for values that are multiples of three and five print out "FizzBuzz". - Interview Question Specification by Tom Dalling

# Sample Output
# hashed_fizz_buzz 25

# {
#       1=>1, 2=>2, 3=>"Fizz", 4=>4, 5=>"Buzz", 6=>"Fizz", 7=>7, 8=>8, 9=>"Fizz", 10=>"Buzz", 11=>11, 12=>"Fizz", 13=>13, 14=>14, 15=>"FizzBuzz", 16=>16, 17=>17, 18=>"Fizz", 19=>19, 20=>"Buzz", 21=>"Fizz", 22=>22, 23=>23, 24=>"Fizz", 25=>"Buzz"
# }
# Real World Usage
# This is one of the most popular coding interview questions. This is due to the fact that it tests:

# Iterating
# Conditionals
# Data structures
# With that in mind, it's an important set of concepts to understand. If you are not able to build this exercise without Googling the answer you may want to consider reviewing these concepts. I purposefully left out any advanced Ruby code so it can be as easy to read as possible.

require 'rspec'

def hashed_fizz_buzz num
  answer_hash = {}
  (1..num).each { |n| (n % 3 == 0) && (n % 5 == 0) ? answer_hash[n] = "FizzBuzz" : 
                      n % 5 == 0 ? answer_hash[n] = "Buzz" : 
                      n % 3 == 0 ? answer_hash[n] = "Fizz" : 
                      answer_hash[n] = n
                }
  answer_hash
end

p hashed_fizz_buzz(25)

describe 'Hashed FizzBuzz' do
  it 'generates a fizz buzz hash' do
    final_hash = {
      1=>1, 2=>2, 3=>"Fizz", 4=>4, 5=>"Buzz", 6=>"Fizz", 7=>7, 8=>8, 9=>"Fizz", 10=>"Buzz", 11=>11, 12=>"Fizz", 13=>13, 14=>14, 15=>"FizzBuzz", 16=>16, 17=>17, 18=>"Fizz", 19=>19, 20=>"Buzz", 21=>"Fizz", 22=>22, 23=>23, 24=>"Fizz", 25=>"Buzz"
    }

    expect(hashed_fizz_buzz 25).to eq(final_hash)
  end
end