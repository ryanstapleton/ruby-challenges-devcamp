require 'rspec'
require 'benchmark'

class Hash
  # def param_converter
  #   output = ""
  #   self.each do |key, value|
  #     if !(output == "")
  #       output = output + "&"
  #     end
  #     output = output + key.to_s + "=" + value.to_s
  #   end
  #   output
  # end

  # def param_converter
  #   output = []
  #   self.each { |key, value| output.push(key.to_s + "=" + value.to_s) }
  #   output.join("&")
  # end

  def param_converter
    self.map { |i| i * "=" } * "&"
  end
end

Benchmark.bm(10) do |x|
  x.report(": ".ljust(20)) {hash.param_converter}
end

describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end