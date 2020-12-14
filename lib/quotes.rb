class Quotes
  attr_reader :id
  @text = { 0 => 'I ate a clock yesterday, it was very time-consuming.',
            1 => "Your limitation—it's only your imagination.",
            2 => 'Push yourself, because no one else is going to do it for you.',
            3 => 'Sometimes later becomes never...',
            4 => 'Great things never come from comfort zones',
            5 => "Success doesn't just find you. ..." }

  def self.request_quote
    @text[rand(5)].to_s
  end

  def self.create_quote(new_msj)
    @new = { @text.length + 1 => '+' + new_msj.to_s + '+' }
    @text.merge(@new)
  end
end
