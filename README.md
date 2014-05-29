### Searching Twitter through the API

* To start using the Twitter API, you need to [register your application with
Twitter][register].
[register]: https://dev.twitter.com/apps


##### Your new application will be assigned a consumer key/secret pair that identifies your application to Twitter.

```ruby
client = Twitter::REST::Client.new do |config|
  config.consumer_key    = "YOUR_CONSUMER_KEY"
  config.consumer_secret = "YOUR_CONSUMER_SECRET"
end
```

##### Write a search query for tweets which returns the 20th most recent tweets with "Is TDD dead".

```ruby
client.search("Is TDD dead", :result_type => "recent").take(20).each do |tweet|
  puts tweet.text
end
```
#### OR

##### Write a search query for tweets which returns the 20th most recent tweets "to @rails".

```ruby
client.search("to:rails", :result_type => "recent").take(3).each do |tweet|
  puts tweet.text
end
```
