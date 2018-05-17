require 'rspec'

# ¥
# £
# $

def currency_converter amount, location
  # locUs = "$";
  # locUk = "£";
  # locJp = "¥";

  # if location == "US"
  #   p money = locUs.to_s + amount.to_s + ".00"
  # elsif location == "UK"
  #   p money = locUk.to_s + amount.to_s + ",00"
  # elsif location == "Japan"
  #   p money = locJp.to_s + amount.to_s
  # end

  case location
  when 'US' then "$%.2f" % amount
  when 'UK' then ("£%.2f" % amount).gsub('.', ',')
  when 'Japan' then "¥%.0f" % amount  
  end
end

describe 'Currency converter' do
  it 'can properly format currency for US, Japan, and UK' do
    expect(currency_converter 5000, 'US').to eq('$5000.00')
    expect(currency_converter 5000, 'Japan').to eq('¥5000')
    expect(currency_converter 5000, 'UK').to eq('£5000,00')
  end
end