require 'rspec'

menu = {
  'appetizers': ['Chips', 'Quesadillas', 'Flatbread'],
  'entrees': ['Steak', 'Chicken', 'Lobster'],
  'desserts': ['Cheesecake', 'Cake', 'Cupcake']
}

# def daily_special hash
#   hash_map = {
#     0 => :appetizers,
#     1 => :entrees,
#     2 => :desserts
#   }

#   rando = Array.new(2) {rand(0..2)}
#   p hash[hash_map[rando[0]]][rando[1]]
# end

# The best solution
def daily_special hash
  hash.values.flatten.sample
end


# def daily_special hash
#   hash[hash.keys.sample].sample
# end

# Jordan's solution
# def daily_special hash
#   menu_items = []
#   hasn.map { |category| menu_items << category.last }.flatten.sample
# end

p daily_special menu

describe 'Nested hash element selector' do
  it 'selected a random element from the set of nested arrays' do
    expect(daily_special(menu).class).to eq(String)
  end
end