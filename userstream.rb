require 'chatterbot/dsl'

TweetStream.configure do |config|
  config.consumer_key = ENV'['CONSUMER_KEY']
  config.consumer_secret = ENV['CONSUMER_SECRET']
  config.oauth_token = ENV['OAUTH_TOKEN']
  config.oauth_token_secret = ENV['OAUTH_SECRET']
  config.auth_method = :oauth
end

search("'That fabulous pink hair'") do |tweet|
  reply "@#{tweet_user(tweet)} That manly dong", tweet
end
