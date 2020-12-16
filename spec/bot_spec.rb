require_relative '../lib/quotes'
require_relative '../lib/facts'

describe Quotes do
  it 'it returns a random text' do
    q = Quotes.new
    allow(q).to receive(:rand).and_return(0)
    expect(q.request_quote).to eq('have to add six numbers to make sure the name is available')
  end
end

describe FactData do
  it 'it returns a random text from facts' do
    f = FactData.new
    allow(f).to receive(:rand).and_return(2)
    expect(f.value).to eq('Ruby is an object oriented programing langauge')
  end
end
