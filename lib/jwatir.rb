jobbie_directory = File.dirname(__FILE__) + "/../vendor/jobbie/"
lib_directory = File.dirname(__FILE__) + "/jwatir/"
element_directory = lib_directory + "elements/"


require 'rubygems'
require 'java'
include Java

require jobbie_directory + 'jna.jar'
require jobbie_directory + 'webdriver-common.jar'
require jobbie_directory + 'webdriver-jobbie.jar'

include_class org.openqa.selenium.By;
include_class org.openqa.selenium.WebDriver;
include_class org.openqa.selenium.RenderedWebElement;
include_class org.openqa.selenium.WebElement;
include_class org.openqa.selenium.ie.InternetExplorerDriver;

require "watir"
require lib_directory + "container"
require lib_directory + "browser"
require element_directory + "web_element"
require element_directory + "text_field"
require element_directory + "button"

module JWatir
  include Watir::Exception
end



