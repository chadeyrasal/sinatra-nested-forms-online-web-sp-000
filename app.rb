require './environment'

module FormsLab
  class App < Sinatra::Base

    # this is the route the READ all the pirates
    get '/pirates' do
      Pirate.all
    end

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

  end
end
