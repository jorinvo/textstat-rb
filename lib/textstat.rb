require 'contracts'

class TextStat

  include Contracts

  Contract Maybe[String] => TextStat
  def initialize(path = nil)
    @histogram = Hash.new 0

    parse_file(path) if path

    self
  end

  Contract String => TextStat
  def << str
    str.downcase.split.each do |w|
      @histogram[w] += 1
    end

    self
  end

  Contract None => Integer
  def total_words
    @histogram.values.inject &:+
  end

  Contract None => Integer
  def unique_words
    @histogram.size
  end

  Contract Maybe[Integer] => ArrayOf[String]
  def most_used(num = 1)
    @histogram.sort_by { |k, v| v }.reverse.map(&:first).take(num)
  end

  Contract None => Integer
  def average_word_length
    weight = -> (word, count) { word.length * count }
    @histogram.map(&weight).inject(&:+) / total_words
  end

  Contract None => Num
  def repetition_rate
    (total_words.to_f / unique_words).round 2
  end


  private

  Contract String => TextStat
  def parse_file(path)
    File.open(path, 'r') do |f|
      f.each { |l| self << l }
    end

    self
  end

end
