require './environment'
require_relative './app/models/pirate'
require_relative './app/models/ship'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @p = Pirate.new(params["pirate"])
      @ships = params["pirate"]["ships"].map do |ship|
        Ship.new(ship)
      end

      erb :'pirates/show'
    end
    
  end
end
