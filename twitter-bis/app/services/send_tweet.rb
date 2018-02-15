class SendTweet
  require 'dotenv'
  require 'twitter'

  def initialize(tweet) #transforme la string en parametres
    @tweet = tweet
  end

  def perform # qui éxecute la tache
    log_in_to_twitter
    send_tweet
  end

  def log_in_to_twitter #qui permet de se login sur twitter avec tes credentials
    # Dotenv.load
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_API_KEY']
      config.consumer_secret     = ENV['TWITTER_API_SECRET']
      config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
    end

  end

  def send_tweet # qui envoie un tweet
    @client.update("#{@tweet}")
  end
end
