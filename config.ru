begin
  require File.dirname(__FILE__) + '/vendor/gems/environment'
  Bundler.require_env
rescue LoadError
  # idk
end

require 'application'
Sinatra::Application.set :raise_errors, true
run Sinatra::Application
