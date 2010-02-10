require 'sinatra'
require 'haml'
require 'sass'

get '/' do
  haml :index
end

get '/portfolio' do
  haml :portfolio
end

get '/contact' do
  haml :contact
end

get '/about' do
  haml :about
end

get '/application.css' do
  content_type 'text/css'
  sass :stylesheet
end
