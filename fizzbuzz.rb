number_list = (1..100).to_a

def fizz_buzz_test array
  newArr = []
  array.each do |element|
    if element % 3 == 0 && element % 5 == 0
      newArr << "Fizzbuzz"
    elsif element % 3 == 0
      newArr << "Fizz"
    elsif element % 5 == 0
      newArr << "Buzz"
    else
      newArr << element
    end
  end
  newArr
end

fizz_buzz_test(number_list)

