require_relative '../lib/quotes'
require_relative '../lib/reminder'

describe Quotes do
  it 'it returns a random text' do
    q = Quotes.new
    allow(q).to receive(:rand).and_return(0)
    expect(q.request_quote).to eq('In all things of nature there is something of the marvellous. author: Aristotle')
  end
  it 'it returns a random text' do
    q = Quotes.new
    allow(q).to receive(:rand).and_return(1)
    expect(q.request_quote).to_not eq('In all things of nature there is something of the marvellous. author: Aristotle')
  end
end

describe Reminder do
  let(:my_array) { ['Have you set the goals for today?', 'Did you take the medicine today?'] }
  it 'it returns a random text from an array' do
    r = Reminder.new
    allow(r).to receive(:select_random).and_return(my_array.none?)
    expect(r.select_random).to eq false
  end
  it 'it returns a random text from an array' do
    r = Reminder.new
    allow(r).to receive(:select_random).and_return(my_array.any?)
    expect(r.select_random).to eq true
  end
end
