require ( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/bitcoin.rb' )

get '/bitcoins' do
  @url = 'https://api.coinmarketcap.com/v1/ticker/'

  response = RestClient.get(@url)
  @bitcoins = response.body
end
