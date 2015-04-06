require_relative 'spec_helper'


stats = "
  total words: 904.061
  unique words: 59.723
  average word length: 4
  most used words: the, and, i, to, of, a, my, in, you, that
  word repetition rate: 15.14
"

describe 'textstat binary' do

  it 'knows shakespeare' do
    cmd = `bin/textstat spec/shakespeare.txt`
    expect(cmd).to eq stats
  end

  it 'supports unix pipes' do
    cmd = `cat spec/shakespeare.txt | bin/textstat`
    expect(cmd).to eq stats
  end

  it 'supports unix file piping' do
    cmd = `bin/textstat < spec/shakespeare.txt`
    expect(cmd).to eq stats
  end

end
