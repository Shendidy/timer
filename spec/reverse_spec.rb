require 'reverse'

describe 'reverse' do

  it '1- should return array of reversed elements' do
    expect(reverse([1, 2, 3])).to eq([3, 2, 1])
  end

  it '2- should return array of reversed elements' do
    expect(reverse(["a", "b", "c"])).to eq(["c", "b", "a"])
  end

  it '2- should return longer arrays of reversed elements' do
    expect(reverse([1, 2, 3, 4, 5, 6, 7])).to eq([7, 6, 5, 4, 3, 2 ,1])
  end
end