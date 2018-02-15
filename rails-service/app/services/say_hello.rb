# Appelle la gem dotenv
require 'dotenv'
require 'twitter'

# Ceci appelle le fichier .env grâce à la gem dotenv, et enregistre toutes les données enregistrées dans une hash ENV
Dotenv.load
# Il est très facile d'appeler les données sensibles du fichier .env, par exemple là je vais afficher TWITTER_API_SECRET
puts ENV['TWITTER_API_SECRET']

class SayHello
  def perform
    p "bonjour"
  end
end
