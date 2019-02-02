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
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
      end
      
      erb :'pirates/show'
    end


  params[:student][:courses].each do |details|
    Course.new(details)
  end

  @courses = Course.all

  erb :student
end

  end
end
