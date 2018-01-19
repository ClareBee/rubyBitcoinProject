require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( 'controllers/coin_controller')

get '/' do
  erb( :index )
end
