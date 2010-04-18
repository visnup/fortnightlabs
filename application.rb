require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'
require 'rdiscount'

set :sass, :style => :compressed

get '/application.css' do
  content_type 'text/css'
  sass :stylesheet
end

get '/' do
  haml :index
end

get '/:template' do
  haml params[:template].to_sym
end
