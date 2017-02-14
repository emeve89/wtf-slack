require 'sinatra'
require 'httparty'
require 'nokogiri'
require './wtf/scraper'
require 'erb'

post '/' do
  @term = params.fetch('text').strip
  @definition = WTF::Scraper.(@term)

  # template = File.open('./templates/basic.erb')
  template = "<%= @term.upcase %>:\n <%= @definition %>"

  ERB.new(template).result(binding)
end
