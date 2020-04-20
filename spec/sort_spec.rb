# frozen_string_literal: true

shared_examples 'sort' do |sort|
  it 'returns same list if tiny' do
    expect(sort.call([])).to eq []
    expect(sort.call([1])).to eq [1]
  end

  it 'sorts' do
    expect(sort.call([2, 1])).to eq [1, 2]
  end

  it 'sorts more reasonable lists' do
    expect(sort.call([2, 1, 3, 1, 5, 20, 7])).to eq [1, 1, 2, 3, 5, 7, 20]
  end
end
