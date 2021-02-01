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

  it 'can handle more complicated graphs' do
    g = Graph.new(Node.new('x'))
    root = g.root
    a = Node.new('a')
    root.edges += [a]
    b = Node.new('b')
    a.edges += [b]
    c = Node.new('c')
    b.edges += [c]
    c1 = Node.new('c1')
    b.edges += [c1]
    c2 = Node.new('c2')
    b.edges += [c2]
    d = Node.new('d')
    c2.edges += [d]
    d = Node.new('d1')
    c2.edges += [d]
    d = Node.new('d2')
    c1.edges += [d]
    e = Node.new('e')
    c2.edges += [e]
    f = Node.new('f')
    e.edges += [f]

    
    expect(search.call(g, root, 'f')).to eq f
  end
end
