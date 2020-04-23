# frozen_string_literal: true

# Depth First Search
def bfs(g, v, c)
  return v if v.content == c
  q = Queue.new
  v.visited = true  
  q.push(v)
  while q.size > 0
    v = q.pop
    return v if v.content == c
    v.edges.each do |w|
      unless w.visited
        w.visited = true
        # This is for re-ordering? 
        # w.parent := v
        q.push(w)
      end
    end
  end
end