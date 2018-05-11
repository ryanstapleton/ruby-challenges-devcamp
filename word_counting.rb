require 'rspec'

def word_counter sentence
  p (sentence.split.count.to_s + ", " + sentence.split(//).size.to_s)
end

# str_1 = "The world is your oyster."
# str_2 = "The quick brown fox jumped over the lazy dog."
# str_3 = "This is a crazy sentence. It has many words - and some unique symbols, to boot."

# word_counter(str_3)

describe 'Count the number of words and letters in a sentence' do
  it 'can take in a string and return a string of the number of words and letters contained therein' do
    str_1 = "The world is your oyster."
    str_2 = "The quick brown fox jumped over the lazy dog."
    str_3 = "This is a crazy sentence. It has many words - and some unique symbols, to boot."
    expect(word_counter(str_1)).to eq("5, 25")
    expect(word_counter(str_2)).to eq("9, 45")
    expect(word_counter(str_3)).to eq("16, 79")
  end
end