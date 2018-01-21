require ( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/bitcoin.rb' )
require( 'json' )
require( 'hashie')
require( 'ostruct')


@bitcoins
get '/graphs' do
  @url = 'https://api.coinmarketcap.com/v1/ticker/'
  response = RestClient.get(@url)
  @bitcoins = JSON.parse(response.body)

  # chart = {chart: {type: 'bar', title: 'Bitcoins', data: response.body, container: 'container'}}
  erb (:"graphs/index")
  # , locals: {title: 'Anychart Ruby template', chartData: chart.to_json}

end
