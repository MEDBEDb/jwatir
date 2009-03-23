module JWatir
  module Container
    def text_field(how,what)
      return TextField.new(self,how,what)
    end
    def button(how,what)
      return Button.new(self,how,what)
    end
    def link(how,what)
      return Link.new(how,what)
    end
    def select_list(how, what=nil)
      return SelectList.new(self, how, what)
    end
    def checkbox(how, what=nil, value=nil)
      return CheckBox.new(self, how, what, value)
    end
    def radio(how, what=nil, value=nil)
      return Radio.new(self, how, what, value)
    end
    def image(how, what=nil)
      return Image.new(self, how, what)
    end
  end
end
