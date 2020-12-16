require 'telegram/bot'
require_relative 'quotes.rb'
require_relative 'facts.rb'

class Bot
  def instructions
    "welcome to motivation chat bot created by Elisha Kyakopo,\n
    the chat bot is to keep you motivated and entertained.\n
    Use  /start to start the bot,  /stop to end the bot,\n
    /quotes to get a diffrent motivational quotes, or /facts to get data about something new"
  end

  def initialize
    token = ENV['API_KEY']
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}" + ' ' + instructions)
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)
        when '/quotes'
          values = Quotes.new
          value = values.request_quote
          bot.api.send_message(chat_id: message.chat.id, text: value, date: message.date)
        when '/facts'
          FactData.new.facts_data
        else bot.api.send_message(chat_id: message.chat.id, text: "Invalid entry, #{message.from.first_name},\n
          you need to use  /start,  /stop ,/facts or /quotes")
        end
      end
    end
  end
end
