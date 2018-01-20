require ( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/coin.rb' )

get '/coins' do
  @coins = Coin.all
  erb ( :"coins/index" )
end


post '/coins' do
  @coins = Coin.new(params)
  @coin.save
  redirect to( "/coins")
end

#read
# get '/coins/:id' do
#   @coin = Coin.find(params['id'])
#   erb( :"coins/show" )
#  end

#update
# get '/coins/:id/edit' do
#   @coin = Coin.find(params['rank'])
#   erb( :"coins/edit" )
# end

post '/coins/:id' do
  @coin = Coin.new(params)
  @coin.update()
  redirect to ("/coins")
end

#destroy
post '/coins/:id/delete' do
  coin = Coin.find(params['id'])
  coin.delete()
  redirect to("/coins")
end
