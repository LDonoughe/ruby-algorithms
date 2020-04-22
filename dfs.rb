# frozen_string_literal: true

# Depth First Search
def dfs(g, v, c)
  return v if v.content == c
  v.visited = true
  # for all directed edges from v to w that are in G.adjacent_edges(v) do
  values = []
  v.edges.each do |w|
    unless w.visited
      values += [dfs(g, w, c)]
    end
  end
  if values&.empty?
    return nil
  else
    return values.reject { |el| el == nil }[0]
  end
end