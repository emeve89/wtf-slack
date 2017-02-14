require 'sinatra'
require 'httparty'
require 'nokogiri'
require './wtf/scraper'

post '/' do
  term = params.fetch('text').strip

  WTF::Scraper.(term)
end
