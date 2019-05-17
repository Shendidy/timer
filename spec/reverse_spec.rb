require 'reverse'

describe 'reverse' do
  
  context '1- unshift' do
    it 'a- should return array of reversed elements' do
      expect(reverse_unshift([1, 2, 3])).to eq([3, 2, 1])
    end

    it 'b- should return array of reversed elements' do
      expect(reverse_unshift(["a", "b", "c"])).to eq(["c", "b", "a"])
    end

    it 'c- should return longer arrays of reversed elements' do
      expect(reverse_unshift([1, 2, 3, 4, 5, 6, 7])).to eq([7, 6, 5, 4, 3, 2 ,1])
    end
  end

  context '2- push' do
    it 'a- should return array of reversed elements' do
      expect(reverse_push([1, 2, 3])).to eq([3, 2, 1])
    end

    it 'b- should return array of reversed elements' do
      expect(reverse_push(["a", "b", "c"])).to eq(["c", "b", "a"])
    end

    it 'c- should return longer arrays of reversed elements' do
      expect(reverse_push([1, 2, 3, 4, 5, 6, 7])).to eq([7, 6, 5, 4, 3, 2 ,1])
    end
  end

  context '3- swap' do
    it 'a- should return array of reversed elements' do
      expect(reverse_swap([1, 2, 3])).to eq([3, 2, 1])
    end

    it 'b- should return array of reversed elements' do
      expect(reverse_swap(["a", "b", "c"])).to eq(["c", "b", "a"])
    end

    it 'c- should return longer arrays of reversed elements' do
      expect(reverse_swap([1, 2, 3, 4, 5, 6, 7])).to eq([7, 6, 5, 4, 3, 2 ,1])
    end

    it 'd- should solve arrays with even number of elements' do
      expect(reverse_swap([1, 2, 3, 4, 5, 6, 7, 8])).to eq([8, 7, 6, 5, 4, 3, 2 ,1])
    end
  end
end