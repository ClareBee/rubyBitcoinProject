require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require( 'json' )
require_relative( '../models/bitcoin.rb' )
require( 'hashie')
require( 'ostruct' )

get '/bitcoins' do
  @url = 'https://api.coinmarketcap.com/v1/ticker/'
  response = RestClient.get(@url)

  @bitcoins = JSON.parse(response.body)
  erb ( :"bitcoins/index")

end
