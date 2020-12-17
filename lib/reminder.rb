require 'telegram/bot'
require 'net/http'
require 'json'
require_relative 'bot.rb'

class Reminder
  REMINDER = [
    'Have you set the goals for today?',
    'Did you take the medicine today?',
    'Remember to sign all documents before knocking off',
    'Say hello to your friends',
    'Do not miss that important meeting'
  ].freeze

  def select_random
    REMINDER.sample
  end
end
