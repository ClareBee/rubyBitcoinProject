require ( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/coin.rb' )

get '/coins' do
  @coins = Coin.all
  erb ( :"coins/index" )
end

get '/coins/new' do
  erb( :"coins/new" )
end

post '/coins' do
  @coin = Coin.new(params)
  @coin.save()
  erb( :"coins/show" )
end
