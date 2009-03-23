module JWatir
  class WebElement
    include Watir::Exception
    def initialize(container,how,what)
      @container,@how, @what = container,how, what
    end
    def locate
      case @how
        when :name
          @element = @container.driver.findElement(By.name(@what))
        when :id
          @element = @container.driver.findElement(By.id(@what))
      end
    end
    def assert_enabled
      raise ObjectDisabledException, "object #{@how} and #{@what} is disabled" unless enabled?
    end
    def enabled?
      locate
      return @element.isEnabled
    end
  end
end
