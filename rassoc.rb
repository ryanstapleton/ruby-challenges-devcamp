require 'rspec'

# def find_element array, value
#   array.each { |pair| return pair if pair[1] == value }
# end

def find_element array, value
  array.rassoc(value)
end

describe 'Find Element' do
  it 'returns an array from a nested array if the second element equals the queried element' do
    players = [
      [27, 'Jose Altuve'],
      [2,  'Alex Bregman'],
      [1,  'Carlos Correa'],
      [9,  'Marwin Gonzalez'],
      [10, 'Yulieski Gurriel']
    ]

    expect(find_element(players, 'Jose Altuve')).to eq([27, 'Jose Altuve'])
  end
end