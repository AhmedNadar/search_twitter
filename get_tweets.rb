require "twitter"

# Authentication details from twitter

client = Twitter::REST::Client.new do |config|
  config.consumer_key    = "YOUR_CONSUMER_KEY"
  config.consumer_secret = "YOUR_CONSUMER_SECRET"
end

# Search for "TDD is dead" and return 10 most "recent" results

client.search("TDD is dead", :result_type => "recent").take(20).each do |tweet|
  puts tweet.text
end; nil