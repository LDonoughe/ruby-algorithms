# frozen_string_literal: true

require_relative '../merge_sort'
require_relative 'shared_examples/sort_spec'

RSpec.describe '#merge_sort' do
  it_behaves_like 'sort', method(:merge_sort)
end
