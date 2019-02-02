ENV['SINATRA_ENV'] ||= "development"

require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(

)

require 'sinatra/base'
require 'sinatra/reloader'

require_all './app'
