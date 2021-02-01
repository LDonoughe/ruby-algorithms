# frozen_string_literal: true

require_relative 'shared_examples/sort_spec'
require_relative '../lomuto'

RSpec.describe '#lomuto' do
  it_behaves_like 'sort', method(:lomuto)
end
