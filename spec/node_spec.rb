require 'rspec'
require './lib/node'
require 'pry'


RSpec.describe Node do
  it "exists" do
    node = Node.new 
    ("plop")

    expect(node.data).to eq("plop")
  end
end


