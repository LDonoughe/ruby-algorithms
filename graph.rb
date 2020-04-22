# frozen_string_literal: true

class Graph
  def initialize(init = false)
    init ||= Node.new
    @root = init.class == Node ? init : Node.new(init)
  end

  attr_reader :root
end

class Node
  def initialize(content = nil)
    @edges = []
    @content = content
    @visited = false
  end

  attr_accessor :edges, :content, :visited
end
