# frozen_string_literal: true

require_relative '../bfs'
require_relative '../graph'
require_relative 'shared_examples/graph_search_spec'

RSpec.describe '#bfs' do
  it_behaves_like 'graph search', method(:bfs)
end
