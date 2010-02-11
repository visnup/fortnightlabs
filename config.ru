begin
  require File.dirname(__FILE__) + '/vendor/gems/environment'
  Bundler.require_env
rescue LoadError
end

require 'fortnight'
Sinatra::Application.set :raise_errors, true
run Sinatra::Application
