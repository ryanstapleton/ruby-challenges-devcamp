require 'rspec'

class Array
  def index_hash 
    hash = Hash.new
    self.each_index { |i| hash[i] = self[i] }
    hash
  end
end

# Jordan's solution
# class Array
#   def index_hash 
#     self.each_with_object({}) do |item, hash|
#       hash[self.index(item)] = item
#     end
#   end
# end

describe 'Array to Hash converter' do
  it 'converts an array to a hash, with the keys being the index and the value being the element' do
    arr = %w{the quick brown fox}
    expect(arr.index_hash).to eq({0=>"the", 1=>"quick", 2=>"brown", 3=>"fox"})
  end
end