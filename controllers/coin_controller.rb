require ( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/coin.rb' )

# get all
get '/coins' do
  @coins = Coin.all
  erb ( :"coins/index" )
end

# add new
get '/coins/new' do
  erb( :"coins/new" )
end

post '/coins' do
  @coin = Coin.new(params)
  @coin.save()
  redirect to("/coins")
end

# delete by id
post '/coins/:id/delete' do
  coin = Coin.find(params['id'])
  coin.delete()
  redirect to("/coins")
end
