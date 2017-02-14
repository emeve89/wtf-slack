require 'sinatra'

post '/' do
  term = params.fetch('text').strip

  WTF::Scraper.(term)
end
