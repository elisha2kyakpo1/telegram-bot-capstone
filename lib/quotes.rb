class Quotes
  QUOTES = [
    'have to add six numbers to make sure the name is available',
    'I ate a clock yesterday, it was very time-consuming.',
    'Did you hear about the crook who stole a calendar? He got twelve months.',
    'Did you hear about the semi-colon that broke the law? He was given two consecutive sentences.',
    'I can still remember a time when the humanity knew more than a bot.'
  ].freeze

  def request_quote
    QUOTES[rand(5)]
  end
end
