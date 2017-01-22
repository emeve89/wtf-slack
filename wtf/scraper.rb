module WTF
  class Scraper
    class << self
      def call(term)
        new.(term)
      end
    end

    def call(term)
      #TODO: scrape vmware's WTF site and return definition
    end
  end
end
