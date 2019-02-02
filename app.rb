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
      erb :'pirates/show'
    end



    post '/student' do
  @student = Student.new(params[:student])
 
  params[:student][:courses].each do |details|
    Course.new(details)
  end
 
  @courses = Course.all
 
  erb :student
end

  end
end
