# frozen_string_literal: true

# Depth First Search
def dfs(g, v, c)
  require 'pry'; binding.pry if v.content == 'c'
  return v if v.content == c
  v.visited = true
  # for all directed edges from v to w that are in G.adjacent_edges(v) do
  v.edges.each do |w|
    unless w.visited
      dfs(g, w, c)
    end
  end
end