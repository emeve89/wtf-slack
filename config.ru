require 'sinatra'

post '/' do
  term = params.fetch('text').strip

  term
end

run Sinatra::Application
