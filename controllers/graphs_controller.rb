require ( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/bitcoin.rb' )
require( 'json' )

@bitcoins
get '/graphs' do
  data = @bitcoins
  puts data
  chart = {chart: {type: 'bar', title: 'Bitcoins', data: data, container: 'container'}}
  erb (:"graphs/index") , locals: {title: 'Anychart Ruby template', chartData: chart.to_json}
end
