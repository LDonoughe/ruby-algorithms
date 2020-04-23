# frozen_string_literal: true

require_relative '../bfs'
require_relative '../graph'

RSpec.describe '#bfs' do
  it 'finds root in graph with root node' do
    g = Graph.new(Node.new('x'))
    expect(bfs(g, g.root, 'x')).to eq g.root
  end

  it 'can have depth' do
    g = Graph.new(Node.new('x'))
    root = g.root
    a = Node.new('a')
    root.edges += [a]
    b = Node.new('b')
    a.edges += [b]
    c = Node.new('c')
    b.edges += [c]
    
    expect(bfs(g, root, 'c')).to eq c
  end
end
