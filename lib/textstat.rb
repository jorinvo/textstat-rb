class TextStat

  def initialize(path = nil)

    @histogram = Hash.new 0

    parse_file(path) if path
  end

  def << str
    str.downcase.split.each do |w|
      @histogram[w] += 1
    end
  end

  def count_unique_words
    @histogram.size
  end

  def most_used(num = 1)
    @histogram.sort_by { |k, v| v }.reverse.map(&:first).take(num)
  end

  def average_word_length
    total = @histogram.values.inject &:+
    @histogram.map { |word, count| word.length * count }.inject(&:+) / total
  end


  private

  def parse_file(path)
    File.open(path, 'r') do |f|
      f.each { |l| self << l }
    end
  end

end
