# def interval number, &block
#   loop do 
#     block.call
#     sleep number
#   end
# end

# Jordan's solution
def interval seconds
  loop do 
    yield
    sleep seconds
  end
end

interval 2 do
  puts "hey there"
end