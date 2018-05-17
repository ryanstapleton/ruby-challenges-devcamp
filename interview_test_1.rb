# FizzBuzzWoof variation 
# - multiples of 3 are Fizz
# - multiples of 5 are Buzz
# - multiples of 7 are Woof


def solution(n)
  (1..n).each { |num| 
    (num % 3 == 0) && (num % 5 == 0) && (num % 7 == 0) ? puts("FizzBuzzWoof") :
    (num % 3 == 0) && (num % 5 == 0) ? puts("FizzBuzz") :
    (num % 3 == 0) && (num % 7 == 0) ? puts("FizzWoof") :
    (num % 5 == 0) && (num % 7 == 0) ? puts("BuzzWoof") :
    (num % 3 == 0) ? puts("Fizz") :
    (num % 5 == 0) ? puts("Buzz") :
    (num % 7 == 0) ? puts("Woof") :
    puts("#{num}")
  }
end

solution(24)