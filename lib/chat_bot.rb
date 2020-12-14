require 'twitter'

CONSUMER_KEY = '5QA0JXiEi6sR8f7Ceo3rfP2jK'.freeze
CONSUMER_SECRET = 'z2JMf7sjWjstp3aWPTAejqnsw18IQDI7p5vbY3n1sGXfg61ZOo'.freeze
ACCESS_TOKEN = '1208282918600237056-ydE7FMsPoO60yOypdOskovZmHCySXi'.freeze
ACCESS_SECRET = 'fBh9PM3w9k0QckDWE4fnm9mn0P6TKSOJzizI6N4ELblWw'.freeze

client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'CONSUMER_KEY'
  config.consumer_secret = 'CONSUMER_SECRET'
  config.access_token = 'ACCESS_TOKEN'
  config.access_token_secret = 'ACCESS_SECRET'
  client.search('#Gbot').take(3).each do |tweet|
    client.update("@#{tweet.user.screen_name} I am a bot")
  end
end
