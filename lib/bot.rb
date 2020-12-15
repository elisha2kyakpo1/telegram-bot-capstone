require 'telegram/bot'
require_relative 'quotes.rb'

class Bot
  def instructions
    "welcome to motivation chat bot created by Elisha Kyakopo,\n
    the chat bot is to keep you motivated and entertained.\n
    Use  /start to start the bot,  /stop to end the bot,\n
    /quotes to get a diffrent motivational quotes"
  end

  def initialize
    token = '1484024670:AAGpphvzoWo4Ah6vtyjKnwNA7e8sgdXYT9E'

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

        # when '/question'
        #   questions
        else bot.api.send_message(chat_id: message.chat.id, text: "Invalid entry, #{message.from.first_name},\n
          you need to use  /start,  /stop , or /quotes")
        end
      end
    end
  end

  # def questions
  #   Telegram::Bot::Client.run(token) do |bot|
  #     bot.listen do |message|
  #       case message.text
  #       when '/question'
  #         question = 'London is a capital of which country?'
  #         answers =
  #           Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: `[%w(A B), %w(C D)]`, one_time_keyboard: true)
  #         bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
  #       when '/quit'
  #         kb = Telegram::Bot::Types::ReplyKeyboardHide.new(hide_keyboard: true)
  #         bot.api.send_message(chat_id: message.chat.id, text: 'Sorry to see you go :(', reply_markup: kb)
  #       end
  #     end
  #   end
  # end
end
