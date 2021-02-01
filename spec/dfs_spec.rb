# frozen_string_literal: true

require_relative '../dfs'
require_relative '../graph'
require_relative 'shared_examples/graph_search_spec'


RSpec.describe '#dfs' do
  it_behaves_like 'graph search', method(:dfs)
end
