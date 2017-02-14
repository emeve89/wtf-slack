module WTF
  class Scraper
    class << self
      def call(term)
        new.(term)
      end
    end

    BASE_URL = "http://www.urbandictionary.com/define.php?".freeze

    def call(term)
      html_response = HTTParty.get("#{BASE_URL}term=#{term}")
      parsed_response = Nokogiri::HTML(html_response)
      parsed_response.css(".meaning").first.text.strip
  end
end
