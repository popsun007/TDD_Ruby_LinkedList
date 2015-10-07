require_relative 'node'

RSpec.describe Node do
  before do
    @node = Node.new(1)
  end

  it "initializes with one argument to set the element attribute" do
    expect(@node.element).to eq(1)
  end

  it "has a next instance variable with default value of nil" do
    expect(@node.next).to eq(nil)
  end

  it "can set next instance" do
  	@node.next = 4
  	expect(@node.next).to eq(4)
  end
end