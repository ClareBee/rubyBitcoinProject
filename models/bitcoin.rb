require 'rubygems'
require 'rest-client'
require 'json'

class Bitcoin
  @url

  def initialize()
    response = RestClient.get(@url)
    return response.body
  end

end
