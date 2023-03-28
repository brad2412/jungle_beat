require 'rspec'
require './lib/node'
require 'pry'


RSpec.describe Node do
  it "exists" do
    node = Node.new("plop")

    expect(node).to be_instance_of(Node)
    expect(node.data).to eq("plop")
    expect(node.next_node).to eq (nil)
  end
end


