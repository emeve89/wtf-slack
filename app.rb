require 'sinatra'
require 'httparty'
require 'nokogiri'
require './wtf/scraper'
require 'erb'

APP_ROOT = File.dirname(__FILE__)
BASIC_TEMPLATE_PATH = File.join(APP_ROOT, 'templates/basic.erb')

post '/' do
  @term = params.fetch('text').strip
  @definition = WTF::Scraper.(@term)

  template = File.read(BASIC_TEMPLATE_PATH)

  ERB.new(template).result(binding)
end
