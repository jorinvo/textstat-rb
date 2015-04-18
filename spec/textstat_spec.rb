require_relative 'spec_helper'
require './lib/textstat'

describe TextStat do

  before do
    @stat = TextStat.new('./spec/shakespeare.txt')
  end

  describe '#total_words' do
    it 'counts the total words' do
      expect(@stat.total_words).to eq 904061
    end
  end

  describe '#unique_words' do
    it 'counts unique words' do
      expect(@stat.unique_words).to eq 59723
    end
  end

  describe '#most_used' do
    it 'finds most used word' do
      expect(@stat.most_used).to eq %w(the)
    end

    it 'finds 2 most used words' do
      expect(@stat.most_used 2).to eq %w(the and)
    end

    it 'finds 10 most used words' do
      expect(@stat.most_used 10).to eq %w(the and i to of a my in you that)
    end
  end

  describe '#average_word_length' do
    it 'returns the average word length' do
      expect(@stat.average_word_length).to eq 4
    end
  end

end
