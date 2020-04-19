# frozen_string_literal: true

require_relative '../merge_sort'

RSpec.describe '#merge_sort' do
  it 'returns same list if tiny' do
    expect(merge_sort([])).to eq []
    expect(merge_sort([1])).to eq [1]
  end

  it 'sorts' do
    expect(merge_sort([2,1])).to eq [1,2]
  end

  it 'sorts more reasonable lists' do
    expect(merge_sort([2,1,3,1,5,20,7])).to eq [1,1,2,3,5,7,20]
  end
end