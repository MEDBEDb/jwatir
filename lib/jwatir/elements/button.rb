module JWatir
  class Button < WebElement
    def click
      assert_enabled
      @element.click
    end
  end
end
