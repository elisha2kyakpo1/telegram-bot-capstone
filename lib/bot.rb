require 'telegram/bot'
require_relative 'jokes.rb'

class Bot
  token = '1484024670:AAGpphvzoWo4Ah6vtyjKnwNA7e8sgdXYT9E'
  def initialize(id)
    @id = id
  end
  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name} the chat bot is to keep you motivated and entertained. Use  /start to start the bot,  /stop to end the bot, /motivate to get a motivational quote or /joke to get a joke ")
    end
  end
end
