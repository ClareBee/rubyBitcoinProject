require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( 'controllers/coin_controller')
require_relative( 'controllers/bitcoin_controller')

get '/' do
  erb( :index )
end
