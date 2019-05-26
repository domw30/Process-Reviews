require 'scrabble'

describe Scrabble do
  context 'invalid scores' do

    it 'returns 0 from an empty string' do
      scrabble = Scrabble.new('')
      expect(scrabble.score).to eq 0
    end

    it 'returns 0 from string that is not valid' do
      scrabble = Scrabble.new(" \t\n")
      expect(scrabble.score).to eq 0
    end

    it 'returns 0 from nil passed' do
      scrabble = Scrabble.new(nil)
      expect(scrabble.score).to eq 0
    end
  end

  context 'valid scores' do

    it 'returns 1 from string with single a' do
      scrabble = Scrabble.new('a')
      expect(scrabble.score).to eq 1
    end

    it 'returns 4 from string with single f' do
      scrabble = Scrabble.new('f')
      expect(scrabble.score).to eq 4
    end

    it 'returns 6 from string street' do
      scrabble = Scrabble.new('street')
      expect(scrabble.score).to eq 6
    end

    it 'returns 22 from string street' do
      scrabble = Scrabble.new('quirky')
      expect(scrabble.score).to eq 22
    end

    it 'returns 41 from string street' do
      scrabble = Scrabble.new('OXYPHENBUTAZONE')
      expect(scrabble.score).to eq 41
    end
  end
end
