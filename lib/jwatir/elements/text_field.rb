module JWatir
  class TextField < WebElement
    def set(value)
      assert_enabled
      @element.sendKeys(value.split('').to_java(:string))
    end
  end
end
