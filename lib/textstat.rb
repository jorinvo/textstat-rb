class TextStat

  def initialize(path = nil)
    @histogram = Hash.new 0
    parse_file(path) if path
    self
  end

  def << str
    str.downcase.split.each do |w|
      @histogram[w] += 1
    end
    self
  end

  def total_words
    @histogram.values.inject(&:+)
  end

  def unique_words
    @histogram.size
  end

  def most_used(num = 1)
    @histogram.sort_by { |k, v| v }.reverse.map(&:first).take(num)
  end

  def average_word_length
    weight = -> (word, count) { word.length * count }
    @histogram.map(&weight).inject(&:+) / total_words
  end

  private

  def parse_file(path)
    File.open(path, 'r') do |f|
      f.each { |l| self << l }
    end
    self
  end

end
