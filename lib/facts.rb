class FactData
  FACTS = [
    'Did you know that the name of a zambian president is Edgar Lungu?',
    'CoronaVirus started in octomber 2019 in china',
    'Ruby is an object oriented programing langauge',
    'Microverse is a remote school for software engineers'
  ].freeze

  def facts_data
    token_value = ENV['API_KEY']
    Telegram::Bot::Client.run(token_value) do |bot1|
      bot1.listen do |message|
        f = FactData.new
        values = f.value
        bot1.api.send_message(chat_id: message.chat.id, text: values, date: message.date)
        return message.text
      end
    end
  end

  def value
    FACTS[rand(5)]
  end
end
