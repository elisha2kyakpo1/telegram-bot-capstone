require_relative '../lib/quotes'

describe Quotes do
  it 'it returns a random text' do
    q = Quotes.new
    allow(q).to receive(:rand).and_return(0)
    expect(q.request_quote).to eq('have to add six numbers to make sure the name is available')
  end
end
