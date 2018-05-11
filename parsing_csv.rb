require 'rspec'
require 'csv'

def csv_parser file_path
  CSV.read(file_path) # -> returns an array of arrays for each row
end

# Jordan's solution

def csv_parser file_path
  lines = File.read(file_path).split(/\r\n/).map do |line|
    line.split(',')
  end
end

csv_parser('support/crm.csv')

describe 'CSV Parser' do
  it 'parses a CSV file and stores each line as an array, with each column as a separate element in the array' do
   final_data = [["Name", "Title", "Email"], ["Darth Vader", "CEO", "betterthan@theforce.com"], ["Luke Skywalker", "Dev", "daddy@issues.com"], ["Kylo Ren", "COO", "daddy2@issues.com"]]
   expect(csv_parser('support/crm.csv')).to eq(final_data)
  end
end