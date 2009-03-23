$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require "jwatir"

class TestGoogleWithJWatir < Test::Unit::TestCase
  def setup
    @browser = JWatir::Browser.new()
    @browser.goto("http://www.google.com")
  end
  def teardown
    @browser.close
  end
  def test_search_for_watir
    @browser.text_field(:name, 'q').set 'watir'
    @browser.button(:name,'btnG').click
    assert_match(/watir/, @browser.title)
  end
end
