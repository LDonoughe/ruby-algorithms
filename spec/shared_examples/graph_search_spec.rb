# frozen_string_literal: true

require_relative '../../graph'

shared_examples 'graph search' do |search|
  it 'finds root in graph with root node' do
    g = Graph.new(Node.new('x'))
    expect(search.call(g, g.root, 'x')).to eq g.root
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
    
    expect(search.call(g, root, 'c')).to eq c
  end
end
