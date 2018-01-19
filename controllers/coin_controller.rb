require ( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/coin.rb' )

get '/coins' do
  @coins = Coin.all
  erb ( :"coins/index" )
end
