require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'

# turn on smartypants by default
class RDiscount
  def initialize text, *extensions
    @text = text
    @smart = true
    @filter_styles = nil
    @filter_html = nil
    @fold_lines = nil
    extensions.each { |e| e.send("#{e}=", true) }
  end
end
Markdown = RDiscount

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
