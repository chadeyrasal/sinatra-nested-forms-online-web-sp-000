require './environment'

module FormsLab
  class App < Sinatra::Base

    # this is the route the READ all the pirates
    get '/pirates' do
      @pirates = Pirate.all
      erb :'pirates/index'
    end

    get '/' do
      erb :index
    end

    get '/new' do
      erb :'pirates/new'
    end

  end
end
