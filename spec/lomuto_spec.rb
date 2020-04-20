# frozen_string_literal: true

require_relative 'sort_spec'
require_relative '../lomuto'

RSpec.describe '#lomuto' do
  # require 'pry'
  # binding.pry
  it_behaves_like 'sort', method(:lomuto)
end
