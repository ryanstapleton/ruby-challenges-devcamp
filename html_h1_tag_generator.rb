require 'rspec'

#  Jordan's Solution

# def title_creator title
#   heading = %w{h1 title_placeholder h1}
#   heading[1] = title
#   "<%s>%s</%s" % heading
# end

def title_creator title
  title.strip.gsub(/\w+/) do |word| 
    word.capitalize
  end
  title.prepend "<h1>"
  title.concat "</h1>"
end

describe 'HTML h1 converter' do
  it 'outputs an h1 tag given a title' do
    expect(title_creator 'A Heading').to eq('<h1>A Heading</h1>')
  end
end