require ( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require( 'json' )
require_relative( '../models/bitcoin.rb' )
require( 'hashie')
require( 'ostruct' )

get '/bitcoins' do
  @url = 'https://api.coinmarketcap.com/v1/ticker/'
  response = RestClient.get(@url)
  # creates array of JSON hashes?
  # @bitcoins = response.body
  # @bitcoins = JSON.parse(response.body, object_class: OpenStruct)

  # bitcoins_hash = {}
  # response.body.each do |bitcoin|
  #   bitcoins_hash[bitcoin] = {name: 'Text'}
  # @bitcoins = bitcoins_hash

  @bitcoins = JSON.parse(response.body)
  erb ( :"bitcoins/index")

end
