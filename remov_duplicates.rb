require 'rspec'

# Jordan's Solution
class Array
  def remove_duplicates
    self.each_with_object([]) { |e, arr| arr << e unless arr.include?(e) }
  end
end

# class Array
#   def remove_duplicates
#     self & self
#   end
# end

# class Array
#   def remove_duplicates
#     self.uniq
#   end
# end

arr = [1, 3, 4, 1, 4]
arr = [4, 1, 3, 4, 1, 4]
p arr.remove_duplicates

describe 'Duplicate removal' do
  it 'Removed duplicates from an array' do
    arr = [1, 3, 4, 1, 4]
    expect(arr.remove_duplicates).to eq([1, 3, 4])
  end
end