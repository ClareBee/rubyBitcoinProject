require_relative( '../models/coin.rb' )
require( 'pry-byebug' )

coin1 = Coin.new ({
  'name' => 'tester info'
})
coin1.save()

binding.pry
nil
