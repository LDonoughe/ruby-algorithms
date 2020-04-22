# frozen_string_literal: true

require_relative '../graph'

RSpec.describe '#graph' do
  it 'creates graph with root node' do
    g = Graph.new(Node.new('a'))
    expect(g.root.class).to eq Node
  end

  it 'can have depth' do
    g = Graph.new(Node.new('root'))
    root = g.root
    a = Node.new
    b = Node.new
    a.edges += [b]
    c = Node.new
    b.edges += [c]
    root.edges += [a]
    expect(g.root.edges[0].edges[0].edges[0].edges).to eq []
  end
end
