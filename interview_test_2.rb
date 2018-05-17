# Find the smallest spread in an array of positive integers, where spread is defined as the absolute value of a[p]-a[q]

a = [8,24,3,20,1,17]

def solution(a)
  answer = 1_000_000
  a.each_with_index do |p, p_index|
    a.each_with_index do |q, q_index|
      if !(p_index == q_index) && (p-q).abs < answer
        answer = (p-q).abs
      end
    end
  end
  answer
end

p solution(a)