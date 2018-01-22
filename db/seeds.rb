require_relative( '../models/coin.rb' )
require( 'pry-byebug' )

Coin.delete_all()

coin1 = Coin.new ({
  'name' => "Bitcoin"
})
coin1.save()

binding.pry
nil
