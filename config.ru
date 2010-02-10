require 'fortnight'

Sinatra::Application.set :raise_errors, true

log = File.new("sinatra.log", "a")
$stdout.reopen(log)
$stderr.reopen(log)

run Sinatra::Application
