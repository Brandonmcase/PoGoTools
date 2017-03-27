class Client < ActiveRecord::Base

  def initialize
    @client = Poke::API::Client.new
    @client.store_location('New York')
    @client.login(ENV['USERNAME'], ENV['Password'], 'ptc')
  end

  def client
    @client
  end

end
