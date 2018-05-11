require 'rspec'

# def palindrome? word
#   word.downcase!
#   if word == word.reverse
#     true
#   else 
#     false
#   end
# end

# def palindrome? word
#   word.downcase!
#   word == word.reverse ? true : false
# end

# def palindrome? word
#   word.downcase!
#   word == word.reverse
# end

# def palindrome? word
#   word.downcase == word.downcase.reverse
# end

def palindrome? word
  word.casecmp(word.reverse).zero?
end

describe 'Check if a word is a palindrome' do
  it 'returns true if the word is a palindrome, false if not' do
    expect(palindrome?('tacocat')).to be(true)
    expect(palindrome?('Tacocat')).to be(true)
    expect(palindrome?('baseball')).to be(false)
  end
end