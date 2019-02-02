require './environment'

module FormsLab
  class App < Sinatra::Base

    # this is the route the READ all the pirates
#    get '/pirates' do
#      @pirates = Pirate.all
#      erb :'pirates/index'
#    end

    get '/' do
      erb :'pirates/new'
    end

#    get '/new' do
#      erb :'pirates/new'
#    end

    post '/pirates' do
      erb :'pirates/show'
    end

  end
end
