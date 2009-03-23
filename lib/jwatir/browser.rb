module JWatir
  class Browser
    include Container
    def initialize(url = "")
      @url = url
      start_browser
    end
    def start_browser
      @driver = InternetExplorerDriver.new
    end
    def goto(url = "")
      raise "No Url to navigate..." if url.eql?("")
      @driver.get(url)
    end
    def driver
      return @driver
    end
    def title
      return @driver.getTitle
    end
    def close
      @driver.close
    end
  end
end
